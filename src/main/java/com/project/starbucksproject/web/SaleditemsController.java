package com.project.starbucksproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.card.Card;
import com.project.starbucksproject.domain.card.CardRepository;
import com.project.starbucksproject.domain.cardcart.Cardcart;
import com.project.starbucksproject.domain.cardcart.CardcartRepository;
import com.project.starbucksproject.domain.cart.CartRepository;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.saleditems.*;
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
  // private final UserRepository userRepository;
  private final HttpSession session;
  private final SaledItemsRepository saledItemsRepository;
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
    int userId = principal.getId();

    List<Saleditems> saleditemsEntity = saledItemsRepository.mfindAllByuserId(userId);
    model.addAttribute("saleditemsEntity", saleditemsEntity);

    List<Cardcart> cardcartsEntity = cardcartRepository.mfindAllByuserId(userId);
    model.addAttribute("cardcartsEntity", cardcartsEntity);

    return "user/purchaseHistory";
  }

  @PostMapping("/user/purchaseHistory")
  public @ResponseBody SaleRespDto<Saleditems> purchaseHistory(@RequestBody SaledReqDto<String> saledReqDto,
      Model model) {
    User principal = (User) session.getAttribute("principal");
    System.out.println("??????????????? ???");
    int amount = Integer.parseInt(saledReqDto.getProductamount());

    int cardId = saledReqDto.getCardId(); // ????????? ???????????????
    Card cardEntity = cardRepository.getById(cardId);
    if (cardEntity.getBalance() == 0) {
      return new SaleRespDto<>(0, "????????? ?????? ???????????? 0??? ?????????. ", null);
    }

    cardEntity.setBalance(cardEntity.getBalance() - amount); // ???????????? ??????
    cardRepository.save(cardEntity); // ????????? ?????????????????? ?????? db??????

    saledItemsService.???????????????(saledReqDto, principal);

    return new SaleRespDto<>(1, "???????????? cart??????,??????????????? ??????", null);
  }

}
