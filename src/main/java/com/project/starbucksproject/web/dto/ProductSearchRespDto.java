package com.project.starbucksproject.web.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
// @AllArgsConstructor
@Data
public class ProductSearchRespDto<T> {
    private int code;
    private String category;
    private T data;

    public ProductSearchRespDto(int code, String category, T data) {
        this.code = code;
        this.category = category;
        this.data = data;
    }
}
