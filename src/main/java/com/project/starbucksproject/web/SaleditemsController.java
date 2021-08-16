package com.project.starbucksproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.card.Card;
import com.project.starbucksproject.domain.card.CardRepository;
import com.project.starbucksproject.domain.cardcart.Cardcart;
import com.project.starbucksproject.domain.cardcart.CardcartRepository;
import com.project.starbucksproject.domain.cart.CartRepository;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.saleditems.SaleditemsRepository;
import com.project.starbucksproject.domain.saleditems.Saleditems;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.service.SaledItemsService;
import com.project.starbucksproject.web.dto.SaleRespDto;
import com.project.starbucksproject.web.dto.SaledReqDto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class SaleditemsController {
    // DI
  //private final UserRepository userRepository;
  private final HttpSession session;
  private final SaleditemsRepository saledItemsRepository;
  private final ProductRepository productRepository;
  private final CartRepository cartRepository;
  private final CardRepository cardRepository;
  private final CardcartRepository cardcartRepository;

  private final SaledItemsService saledItemsService;

  @GetMapping("/user/purchaseHistory")
  public String purchaseHistoryForm(Model model) {
    User principal = (User) session.getAttribute("principal");
    if (principal == null) {
      return "redirect:/auth/login";
    }
    int userId=principal.getId();

    List<Saleditems> saleditemsEntity= saledItemsRepository.mfindAllByuserId(userId);
    model.addAttribute("saleditemsEntity", saleditemsEntity);

    List<Cardcart> cardcartsEntity=cardcartRepository.mfindAllByuserId(userId);
    model.addAttribute("cardcartsEntity", cardcartsEntity);

      return "user/purchaseHistory";
  }
    
    @PostMapping("/user/purchaseHistory")
    public @ResponseBody SaleRespDto<Saleditems> purchaseHistory(@RequestBody SaledReqDto<String> saledReqDto, Model model) {
      User principal = (User) session.getAttribute("principal");
      System.out.println("결재후처리 전");
        int amount=Integer.parseInt(saledReqDto.getProductamount());

        int cardId=saledReqDto.getCardId();   //결제할 카드아이디
        Card cardEntity=cardRepository.getById(cardId);   
        if (cardEntity.getBalance()==0) {
          return new SaleRespDto<>(0,"선택한 카드 충전액은 0원 입니다. ",null);
        }
        
        cardEntity.setBalance(cardEntity.getBalance()-amount);    //결제금액 차감
        cardRepository.save(cardEntity);  //차감된 결제금액으로 다시 db저장

        saledItemsService.결재후처리(saledReqDto, principal);  
      

        return new SaleRespDto<>(1,"선택상품 cart삭제,구매내역에 저장",null);
    }
}
