package com.project.starbucksproject.web.dto;

import java.security.Timestamp;
import java.util.Date;

import com.project.starbucksproject.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserDto {
    private User user;

    private long SUM;

}