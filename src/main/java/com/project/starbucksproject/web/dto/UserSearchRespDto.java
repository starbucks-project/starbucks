package com.project.starbucksproject.web.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
// @AllArgsConstructor
@Data
public class UserSearchRespDto <T> {
  private int code;
  private String name;
  private T data;
  
  public UserSearchRespDto(int code, String name, T data) {
    this.code = code;
    this.name = name;
    this.data = data;
  }
}
