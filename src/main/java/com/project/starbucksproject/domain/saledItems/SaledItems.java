package com.project.starbucksproject.domain.saleditems;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.project.starbucksproject.domain.cart.Cart;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.user.User;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
public class Saleditems {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    @CreationTimestamp
<<<<<<< HEAD
    private Timestamp createDate; //구매날짜

    //@ManyToOne
    //private Cart cart; // cart 조인
=======
    private Timestamp date; // 구매 날짜
>>>>>>> 9e4e0e6fd95a55923246390025b455a08e738d6e

    @ManyToOne
    private Product product; // product 조인

    @ManyToOne
    private User user; // user 조인
}