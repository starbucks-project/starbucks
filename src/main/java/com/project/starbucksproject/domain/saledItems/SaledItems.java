package com.project.starbucksproject.domain.saledItems;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.project.starbucksproject.domain.cart.Cart;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.user.User;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
public class SaledItems {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    @CreationTimestamp
    private Timestamp date; //구매날짜

    //@ManyToOne
    //private Cart cart; // cart 조인

    //@JsonIgnoreProperties({"saleditems"})
    @ManyToOne
    private Product product; // product 조인

    @ManyToOne
    private User user; // user 조인
}