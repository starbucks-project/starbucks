package com.project.starbucksproject.web.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data 
public class CardcartReqDto { 
	private String receiverName; // 받는 사람
    private String phone1;
	private String phone2;
	private String phone3;
    private String message;//메세지

    private int price; // card충전 금액(=cart 주문금액)

}