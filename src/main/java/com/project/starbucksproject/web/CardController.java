package com.project.starbucksproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.card.Card;
import com.project.starbucksproject.domain.card.CardRepository;
import com.project.starbucksproject.domain.cardcart.Cardcart;
import com.project.starbucksproject.domain.cardcart.CardcartRepository;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.web.dto.CardcartReqDto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
  private final CardcartRepository cardcartRepository;

  //카드등록 
  @PostMapping("/user/cardRegi")
  public @ResponseBody String cardRegiForm(@RequestBody Card card) {
      System.out.println("CardName:"+card.getCardName());
      System.out.println(card.getCardNum());
      System.out.println(card.getPin());

//      if(card.getCardName()==null){
//        List<Card> cardList=cardRepository.findAll();
        //cardList.
//      }
      
      User principal=(User)session.getAttribute("principal");
      if(principal==null) {
        System.out.println("로그인되지 않음");
        return "fail";
      }
      
      card.setUser(principal);
      card.setCardImage("cardImg.png");
      Card cardEntity=cardRepository.save(card);
      if(cardEntity.getCardName()==null || cardEntity.getCardName().equals("")){
        cardEntity.setCardName("카드_"+cardEntity.getId());
        System.out.println("CardName:"+cardEntity.getCardName());
        cardRepository.save(cardEntity);
      }
      
      return "ok";
  }

  //카드등록 페이지 이동
  @GetMapping("/user/cardRegi")
  public String cardRegi() {

      return "user/cardRegi";
  }

  @GetMapping("/user/egift")
  public String eGift() {
      return "user/eGift";
  }

  //보유카드
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

  @GetMapping("/user/cardCharge")
  public String userinfo(Model model) {
    User principal=(User)session.getAttribute("principal");
    int userid = principal.getId();
    Card cardEntity = cardRepository.findById(1).get();
    model.addAttribute("cardEntity", cardEntity);

    return "/user/cardCharge"; 
  }

    // e-gift 카드 선물하기에서 '결제하기 버튼 클릭'
    @PostMapping("/user/cardcart")
    public String cardCart(CardcartReqDto cardcartReqDto){
  
      User principal=(User)session.getAttribute("principal");
      if(principal==null) {
        return "redirect:/auth/login";
       }
       
      String phone1= cardcartReqDto.getPhone1();
      String phone2=cardcartReqDto.getPhone2();
      String phone3=cardcartReqDto.getPhone3();
      int price=cardcartReqDto.getPrice();
  
      String receiverPhonenum = phone1+phone2+phone3;
      String receiverName=cardcartReqDto.getReceiverName();
      String message=cardcartReqDto.getMessage();
  
      Cardcart cardcart=new Cardcart();
      cardcart.setPrice(price);
      cardcart.setReceiverName(receiverName);
      cardcart.setReceiverPhonenum(receiverPhonenum);
      cardcart.setUser(principal);
      cardcartRepository.save(cardcart);
  
      return "redirect:/user/egift";
    }

}
