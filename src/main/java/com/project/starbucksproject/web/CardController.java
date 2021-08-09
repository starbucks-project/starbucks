package com.project.starbucksproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.card.Card;
import com.project.starbucksproject.domain.card.CardRepository;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.user.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class CardController {

  // DI
  //private final UserRepository userRepository;
  private final HttpSession session;
  private final ProductRepository productRepository;
  private final CardRepository cardRepository;

  @PostMapping("/user/cardRegi")
  public @ResponseBody String cardRegiForm(@RequestBody Card card) {
      System.out.println(card.getCardName());
      System.out.println(card.getCardNum());
      System.out.println(card.getPin());

      User principal=(User)session.getAttribute("principal");
      if(principal==null) {
        return "fail";
      }

      card.setUser(principal);
      card.setCardImage("cardImg.png");
      cardRepository.save(card);

      return "ok";
  }

  @GetMapping("/user/cardRegi")
  public String cardRegi() {

      return "user/cardRegi";
  }

  
  @GetMapping("/user/inMyCard")
  public String inMyCard(Model model) {
    User principal=(User)session.getAttribute("principal");
      if(principal==null) {
        return "redirect:/auth/login";
      }

      int userId=principal.getId();
      //List<Card> cardsEntity=cardRepository.mfindByAlluserId(userId);
      //model.addAttribute("cardsEntity", cardsEntity);
      Card cardEntity=cardRepository.findById(1).get();
      model.addAttribute("cardEntity", cardEntity);

      return "user/inMyCard";
  }


  @GetMapping("user/cardCharge")
  public String userinfo(Model model) {
    User principal=(User)session.getAttribute("principal");
    int userid = principal.getId();
    List<Card> cardsEntity = cardRepository.mfindByAlluserId(userid);
    model.addAttribute("cardsEntity", cardsEntity);

    return "/user/cardCharge"; 
  }


}
