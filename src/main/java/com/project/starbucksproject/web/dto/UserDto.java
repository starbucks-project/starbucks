package com.project.starbucksproject.web.dto;

import java.security.Timestamp;

import com.project.starbucksproject.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserDto {
    private int id;
    private String name;
    private String email;
    private Timestamp createDate;

    private long SUM;

}