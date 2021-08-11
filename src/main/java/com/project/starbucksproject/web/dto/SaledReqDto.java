package com.project.starbucksproject.web.dto;

import java.util.ArrayList;

import lombok.Data;

@Data
public class SaledReqDto<T> {
    private int applyNum;
    private int length;
    private ArrayList<T> arrProductId;
    private ArrayList<T> arrCartId;
}
