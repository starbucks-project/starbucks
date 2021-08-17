package com.project.starbucksproject.web;

import java.io.Console;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.card.Card;
import com.project.starbucksproject.domain.card.CardRepository;
import com.project.starbucksproject.domain.cardcart.Cardcart;
import com.project.starbucksproject.domain.cardcart.CardcartRepository;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.web.dto.CMRespDto;
import com.project.starbucksproject.web.dto.CardcartReqDto;
import com.project.starbucksproject.web.dto.PayreqDto;

import org.json.simple.JSONObject;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@RequiredArgsConstructor
@Controller
public class CardController {

  // DI
  // private final UserRepository userRepository;
  private final HttpSession session;
  //private final ProductRepository productRepository;
  private final CardRepository cardRepository;
  private final CardcartRepository cardcartRepository;

  //카드등록 
  @PostMapping("/user/cardRegi")
  public @ResponseBody String cardRegiForm(@RequestBody Card card) {
      System.out.println("CardName:"+card.getCardName());
      System.out.println(card.getCardNum());
      System.out.println(card.getPin());
      
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

 

  //보유카드
  @GetMapping("/user/inMyCard")
  public String inMyCard(Model model) {
    User principal = (User) session.getAttribute("principal");
    if (principal == null) {
      return "redirect:/auth/login";
    }

    int userId = principal.getId();
    // List<Card> cardsEntity=cardRepository.mfindByAlluserId(userId);
    // model.addAttribute("cardsEntity", cardsEntity);
    //Card cardEntity = cardRepository.findById(1).get();
    //model.addAttribute("cardEntity", cardEntity);

      List<Card> cardsEntity = cardRepository.mfindByAlluserId(userId);
      //Page<Card> cardsEntity = cardRepository.mfindByIdPage(userId, pageRequest);
    
    //System.out.println("=====================\n"+cardEntity.getContent()+"\n==================");

    // 등록된 카드가 없으면 카드 등록 페이지로 이동
      model.addAttribute("cardsEntity", cardsEntity);
      int cardsize=cardsEntity.size();
      model.addAttribute("cardsize", cardsize);

      return "user/inMyCard";
    
  }

  @GetMapping("/user/cardCharge")
  public String userinfo(Model model) {
    User principal = (User) session.getAttribute("principal");
    if (principal == null) {
      return "redirect:/auth/login";
    }
    int userid = principal.getId();
    List<Card> cardsEntity = cardRepository.mfindByAlluserId(userid);
    model.addAttribute("cardsEntity", cardsEntity);

    return "/user/cardCharge";
  }

  @GetMapping("/user/egift")
  public String eGift() {
      return "user/eGift";
  }
  // e-gift 카드 선물하기에서 '결제하기 버튼 클릭'
  @PostMapping("/user/egift/complete")
  public @ResponseBody String cardCart(@RequestBody CardcartReqDto cardcartReqDto) {

    User principal = (User) session.getAttribute("principal");
    if (principal == null) {
      return "redirect:/auth/login";
    }

    int price = cardcartReqDto.getPrice();
    System.out.println(price);

    String receiverPhonenum = cardcartReqDto.getReceiverPhonenum();
    String receiverName = cardcartReqDto.getReceiverName();
    String message = cardcartReqDto.getMessage();

    Cardcart cardcartEntity = new Cardcart();
    cardcartEntity.setPrice(price);
    cardcartEntity.setReceiverName(receiverName);
    cardcartEntity.setReceiverPhonenum(receiverPhonenum);
    cardcartEntity.setUser(principal);

    cardcartRepository.save(cardcartEntity);

    return "ok";
  }

  @PostMapping("/user/egift/sms")
  public @ResponseBody String sendSms(@RequestBody CardcartReqDto cardcartReqDto){

    User principal = (User) session.getAttribute("principal");
    if (principal == null) {
      return "redirect:/auth/login";
    }

    String api_key = "NCSVOC9YEFSNDT4P";
    String api_secret = "FGR8KYYDTZWGXINUXN0BX8HG7F83W7ZK";
    Message coolsms = new Message(api_key, api_secret);

    String receiverName = cardcartReqDto.getReceiverName();
    String receiverPhonenum = cardcartReqDto.getReceiverPhonenum();
    String message = cardcartReqDto.getMessage();
    int price = cardcartReqDto.getPrice();

     // 4 params(to, from, type, text) are mandatory. must be filled
     HashMap<String, String> params = new HashMap<String , String>();
     params.put("to", receiverPhonenum);
     params.put("from", principal.getPhoneNum()); //principal.getPhoneNum()
     params.put("type", "LMS");
     params.put("text", ""+principal.getName()+" 님께서 "+receiverName+" 님에게 eGift 카드를 보내셨습니다. 금액: "+price+", 내용: ["+message+"]");
     params.put("app_version", "test app 1.2"); // application name and version
     
     System.out.println("--------------------------------------");
     System.out.println(params);
     System.out.println("--------------------------------------");
     try {
      JSONObject obj = (JSONObject) coolsms.send(params);
      System.out.println(obj.toString());
     
    } catch (CoolsmsException e) {
      System.out.println(e.getMessage());
      System.out.println(e.getCode());
     
    }
  
    return "ok";
  }

  @PostMapping("/user/cardCharge/complete")
  public String chargePoint(@RequestBody PayreqDto payreqDto){
    
    System.out.println(payreqDto.getAmount());
    System.out.println(payreqDto.getCardid());
    int cardid=payreqDto.getCardid();
    int amount=payreqDto.getAmount();

    Card cardEntity= cardRepository.findById(cardid).get();
    int  balance= cardEntity.getBalance();
    balance+=amount;
    cardEntity.setBalance(balance);
    cardRepository.save(cardEntity);

    return "ok";
  }

  @GetMapping("/user/cardInfo/{id}")
  public @ResponseBody CMRespDto<Card> cardInfo(@PathVariable int id) {
    Card cardEntity=cardRepository.findById(id).get();

    return new CMRespDto<>(1,"성공",cardEntity);
  }
  

}

