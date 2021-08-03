package com.project.starbucksproject.domain.store;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Store {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // 기본키

    private String storeName; // 가게 명
    private int latitude; // 위도
    private int longtitude; // 경도
    private String address; // 주소
    private String storeCategory; // 카테고리(드라이브스루/리저브)
}
