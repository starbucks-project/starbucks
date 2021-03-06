package com.project.starbucksproject.domain.cart;

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
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    //private String receiver; // 받는 사람

    @ManyToOne
    private Product product; // product 조인

    @ManyToOne
    private User user;
}
