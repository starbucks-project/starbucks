package com.project.starbucksproject.web;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


// @Controller
// public class SaledItemController {
   
//     @PostMapping(value="/payments/complete")
//     public SaledItem postMethodName(@RequestBody SomeEnityData entity) {
//         //TODO: process POST request
        
//         return entity;
//     }
    
    
// }
