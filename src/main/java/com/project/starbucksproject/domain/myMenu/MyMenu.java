package com.project.starbucksproject.domain.mymenu;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.user.User;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
public class Mymenu {   
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    // private String productName; // 상품명
    private String proNickname; // 상품닉네임

    // 시간이 자동 입력됨
    @CreationTimestamp
    private Timestamp createDate; // 등록일

    @JsonIgnoreProperties({"mymenus"})	//무한참조방지
    @ManyToOne
    @JoinColumn(name = "productId")
    private Product products; // product 조인

    @JsonIgnoreProperties({"mymenus"})
    @ManyToOne
    @JoinColumn(name = "userId")
    private User user; // user 조인
}
