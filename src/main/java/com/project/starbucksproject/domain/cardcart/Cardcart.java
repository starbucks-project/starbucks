package com.project.starbucksproject.domain.cardcart;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.project.starbucksproject.domain.user.User;

import lombok.Data;

@Data
@Entity
public class Cardcart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    private String receiverName; // 받는 사람
    private String receiverPhonenum; // 받는 사람

    private int price; // card충전 금액(=cart 주문금액)

    @ManyToOne
    private User user;
}
