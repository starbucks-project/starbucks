package com.project.starbucksproject.domain.user;

import java.sql.Timestamp;
import java.util.List;

// import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
// import javax.persistence.OneToMany;
import javax.persistence.OneToMany;

import com.project.starbucksproject.domain.mymenu.MyMenu;

import org.hibernate.annotations.CreationTimestamp;

// import com.project.starbucksproject.domain.card.Card;
// import com.project.starbucksproject.domain.saledItems.SaledItems;

import lombok.Data;

@Data
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    private String name; // 이름
    private String email; // 이메일
    private String nickname; // 닉네임
    private String phoneNum; // 휴대폰 번호
    private String year; // 생년월일
    private String month; // 월
    private String date; // 일
    private int balance; // 충전 잔액

    @CreationTimestamp
    private Timestamp createDate; // 회원가입 일

    @OneToMany(mappedBy = "user")
    private List<MyMenu> mymenus; // 마이메뉴 조인

    // @OneToMany(mappedBy = "mymenu")
    // private List<MyMenu> mymenus;

    // @OneToMany(mappedBy = "card")
    // private List<Card> cards;

    // @OneToMany(mappedBy = "sailed_items")
    // private List<SaledItems> saledItems;
}
