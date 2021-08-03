package com.project.starbucksproject.domain.myMenu;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.user.User;

import lombok.Data;

@Data
@Entity
public class MyMenu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    private String productName; // 상품명
    private String date; // 등록일

    @ManyToOne
    private Product products; // product 조인

    @ManyToOne
    private User user; // user 조인
}
