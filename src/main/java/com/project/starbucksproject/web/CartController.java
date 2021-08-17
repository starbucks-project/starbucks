package com.project.starbucksproject.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.card.Card;
import com.project.starbucksproject.domain.card.CardRepository;
import com.project.starbucksproject.domain.cardcart.CardcartRepository;
import com.project.starbucksproject.domain.cart.Cart;
import com.project.starbucksproject.domain.cart.CartRepository;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;
import com.project.starbucksproject.web.dto.CartDelReqDto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class CartController {

  // DI
  private final UserRepository userRepository;
  private final HttpSession session;
  private final ProductRepository productRepository;
  private final CartRepository cartRepository;
  private final CardRepository cardRepository;

  @GetMapping("/user/cart")
  public String cartForm(Model model) {
    User principal = (User) session.getAttribute("principal");
    if (principal == null) {
      return "redirect:/auth/login";
    }
    int userId = principal.getId();
    List<Cart> carts = cartRepository.mfindAllByuserId(userId);
    model.addAttribute("carts", carts);

    List<Card> cardsEntity = cardRepository.mfindByAlluserId(userId);
    model.addAttribute("cardsEntity", cardsEntity);


    return "user/Cart";
  }

  // product detail페이지에서 장바구니 담기
  @GetMapping("/user/cartSave/{id}")
  public String cartSave(@PathVariable int id, Model model) {

    // 인증된 사용자 : session에 저장된 User객체 들고오기
    User principal = (User) session.getAttribute("principal");
    // 인증안된 사용자는 쫓아내면 된다!
    if (principal == null) {
      return "redirect:/auth/login";
    }

    //String receivPhoneNum=principal.getPhoneNum();
    //String receiver=principal.getName();
    // if (receivPhoneNum==null) {
    //   receivPhoneNum="";
    // }

    Product productEntity = productRepository.findById(id).get();
    model.addAttribute("productEntity", productEntity);

    Cart cart=new Cart();
    //cart.setPrice(productEntity.getPrice());
    cart.setProduct(productEntity);
    //cart.setReceiver(receiver);
    cart.setUser(principal);
    cartRepository.save(cart);
    model.addAttribute("cart", cart);

    return "redirect:/user/cart";
  }

  //장바구니에 담은 product 삭제
  @DeleteMapping("/user/cartDel")
  public @ResponseBody String mymenuDel(@RequestBody CartDelReqDto<String> dto ) {
    int length=dto.getLength();
    ArrayList<String> arr=dto.getArr();
    System.out.println(length);
    System.out.println(dto.getArr());

    if(arr == null) {
      return "fail";
    } 
    for (int i = 1; i < length; i++) {
      
      String id_str=arr.get(i);
      System.out.println(id_str);

      int id=Integer.parseInt(id_str);
      System.out.println(id);
      cartRepository.deleteById(id);
      
    }
    return "ok";
  }
}
