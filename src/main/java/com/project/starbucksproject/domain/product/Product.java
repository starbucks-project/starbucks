package com.project.starbucksproject.domain.product;

import java.sql.Timestamp;
import java.util.List;

// import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
// import javax.persistence.OneToMany;
import javax.persistence.OneToMany;

import com.project.starbucksproject.domain.mymenu.Mymenu;

import org.hibernate.annotations.CreationTimestamp;


// import com.project.starbucksproject.domain.cart.Cart;
// import com.project.starbucksproject.domain.myMenu.MyMenu;

import lombok.Data;

@Data
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    private String category; // 카테고리
    private String productName; // 상품 명
    private String productNameEng;  // 상품 영문명
    private String productInfo; // 상세 설명

    private int kcal;           // 칼로리
    private int saturatedFat;   // 포화지방
    private int protein;        // 단백질
    private int natrium;        // 나트륨
    private int sugar;          // 당류
    private int caffeine;        // 카페인

    @Lob
    private String productImg; // 상품 이미지

    // 시간이 자동 입력됨
    @CreationTimestamp
    private Timestamp createDate; // 등록일

    @OneToMany(mappedBy = "products")
    private List<Mymenu> mymenus; // 마이메뉴 조인

    // @OneToMany(mappedBy = "cart")
    // private List<Cart> carts; // 카트 조인
}
