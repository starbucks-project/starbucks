package com.project.starbucksproject.service;

import java.util.ArrayList;
import java.util.List;

import com.project.starbucksproject.domain.cart.CartRepository;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.saleditems.SaledItemsRepository;

import com.project.starbucksproject.domain.saleditems.*;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.web.dto.SaledReqDto;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class SaledItemsService {
  private final SaledItemsRepository saledItemsRepository;
  private final ProductRepository productRepository;
  private final CartRepository cartRepository;

  @Transactional
  public void 결재후처리(SaledReqDto<String> saledReqDto, User principal) {
    int length = saledReqDto.getLength();

    ArrayList<String> arrCartId = saledReqDto.getArrCartId();
    for (int i = 1; i < arrCartId.size(); i++) {
      int cartId = Integer.parseInt(arrCartId.get(i));
      cartRepository.deleteById(cartId);
    }

    // List<Product> productsEntity=new ArrayList<>(length-1);
    // List<Saleditems> saleditems=new ArrayList<>(length-1);
    ArrayList<String> arrProductId = saledReqDto.getArrProductId();
    System.out.println("arrProductId: " + arrProductId);
    for (int i = 0; i < arrProductId.size(); i++) {
      int productId = Integer.parseInt(arrProductId.get(i));
      System.out.println("productId: " + productId);

      Product productEnity = productRepository.findById(productId).get();

      Saleditems saleditem = new Saleditems();
      saleditem.setUser(principal);
      saleditem.setProduct(productEnity);
      saledItemsRepository.save(saleditem);
    }
  }
}
