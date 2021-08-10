package com.project.starbucksproject.domain.card;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.project.starbucksproject.domain.user.User;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
public class Card {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    private String cardName; // 카드 이름
    private String cardImage; // 카드 이미지
    private String pin; // 카드 핀번호
    private String cardNum; // 카드 번호
    private int balance; // 잔액

    @CreationTimestamp
    private Timestamp createDate;

    @ManyToOne
    @JoinColumn(name = "userId")
    private User user; // user 조인

}
