package com.project.starbucksproject.domain.saledItems;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.project.starbucksproject.domain.cart.Cart;
import com.project.starbucksproject.domain.user.User;

import lombok.Data;

@Data
@Entity
public class SaledItems {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    private String date; // 구매 날짜

    // @ManyToOne
    // private Cart cart; // cart 조인

    // @ManyToOne
    // private User user; // user 조인
}
