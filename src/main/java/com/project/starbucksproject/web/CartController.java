package com.project.starbucksproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.card.Card;
import com.project.starbucksproject.domain.card.CardRepository;
import com.project.starbucksproject.domain.cart.Cart;
import com.project.starbucksproject.domain.cart.CartRepository;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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
  public String cartForm(Model model){
    User principal=(User)session.getAttribute("principal");
    if(principal==null) {
      return "redirect:/auth/login";
    }
    int userId=principal.getId();
    List<Cart> carts=cartRepository.mfindAllByuserId(userId);
    model.addAttribute("carts",carts);

    return "user/Cart";
  }

  //product detail페이지에서 장바구니 담기 
  @GetMapping("/user/cartSave/{id}")
  public String cartSave(@PathVariable int id,Model model) {
    
    //인증된 사용자 : session에 저장된 User객체 들고오기
    User principal=(User)session.getAttribute("principal");
    //인증안된 사용자는 쫓아내면 된다!
    if(principal==null) {
      return "redirect:/auth/login";
    }

    String receivPhoneNum=principal.getPhoneNum();
    String receiver=principal.getName();
    if (receivPhoneNum==null) {
      receivPhoneNum="";
    }

    Product productEntity=productRepository.findById(id).get();
    model.addAttribute("productEntity", productEntity);

    Cart cart=new Cart();
    cart.setPrice(productEntity.getPrice());
    cart.setProduct(productEntity);
    cart.setReceiver(receiver);
    cart.setUser(principal);
    cartRepository.save(cart);
    model.addAttribute("cart", cart);

    return "redirect:/user/cart";
  }

  
  // e-gift 카드 선물하기에서 장바구니로 이동
  @GetMapping("/user/cardcart/{id}")
  public String cartcard(@PathVariable int id,Model model){
     //인증된 사용자 : session에 저장된 User객체 들고오기
    User principal=(User)session.getAttribute("principal");
     //인증안된 사용자는 쫓아내면 된다!
    if(principal==null) {
      return "redirect:/auth/login";
     }
 
    String receivPhoneNum = principal.getPhoneNum();
    String receiver=principal.getName();
    if (receivPhoneNum==null) {
      receivPhoneNum="";
    }
  
    //  Card cardEntity = CardRepository.findById(id).get();


    //  Cart cart=new Cart();
    //  cart.setPrice(cardEntity.getPrice()); 
    //  cart.setProduct(cardEntity.getCardName());
    //  cart.setReceiver(receiver);
    //  cart.setUser(principal);
    //  cartRepository.save(cart);
    //  model.addAttribute("cart", cart);

    return "redirect:/user/Cart";
  }
}
