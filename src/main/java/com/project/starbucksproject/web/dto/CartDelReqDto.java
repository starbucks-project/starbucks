package com.project.starbucksproject.web.dto;

import java.util.ArrayList;

import lombok.Data;

@Data
public class CartDelReqDto<T> {
    private ArrayList<T> arr;
    private int length;
}
