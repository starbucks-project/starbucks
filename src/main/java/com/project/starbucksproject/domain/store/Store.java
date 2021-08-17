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

    private String category; // 카테고리(일반/드라이브스루/리저브) =general/drive/reserve 
    private String title; // 가게 명
    private double latitude; // 위도
    private double longtitude; // 경도
    private String content; // 주소
    private String tel; //가게번호
    
}
