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

    return "user/Cart";
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

<<<<<<< HEAD
    String receivPhoneNum = principal.getPhoneNum();
    String receiver=principal.getName();
=======
    String receivPhoneNum=principal.getPhoneNum(); //??????받는 사람 이름,번호 받아서 ! principal이 아님
    String receiver=principal.getName();                         //??????받는 사람 이름,번호 받아서 ! principal이 아님
>>>>>>> e28cd924ba4c7ecb70f6e66c49127a417ee9ea2a
    if (receivPhoneNum==null) {
      receivPhoneNum="";
    }

<<<<<<< HEAD
    //  Card cardEntity = CardRepository.findById(id).get();


    //  Cart cart=new Cart();
    //  cart.setPrice(cardEntity.getPrice());
    //  cart.setProduct(cardEntity.getCardName());
    //  cart.setReceiver(receiver);
    //  cart.setUser(principal);
    //  cartRepository.save(cart);
    //  model.addAttribute("cart", cart);
=======
     Card cardEntity = cardRepository.findById(id).get(); //선물하고자하는 카드가 이미 카드 db에 등록되어있나요???


     Cart cart=new Cart();
     cart.setPrice(cardEntity.getPrice());
     //cart.setProduct(cardEntity.getCardName());
     cart.setReceiver(receiver);
     cart.setUser(principal);
     cartRepository.save(cart);
     model.addAttribute("cart", cart);
>>>>>>> e28cd924ba4c7ecb70f6e66c49127a417ee9ea2a

    return "user/Cart";
  }
}
