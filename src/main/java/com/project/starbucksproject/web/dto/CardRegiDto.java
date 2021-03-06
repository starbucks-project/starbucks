package com.project.starbucksproject.web.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class CardRegiDto {
    private String cardName;
    private String cardNum;
    private String pin;

}
