package com.project.starbucksproject.web.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data 
public class SaleRespDto<T> { 
	private int code;
	private String msg;
	private List<T> data;
}