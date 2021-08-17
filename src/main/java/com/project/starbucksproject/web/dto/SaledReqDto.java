package com.project.starbucksproject.web.dto;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class SaledReqDto<T> {
    //private int applyNum;
    private String productamount;
    private int cardId;
    private int length;
    private ArrayList<T> arrProductId;
    private ArrayList<T> arrCartId;
}
