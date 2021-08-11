package com.project.starbucksproject.web;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

// import com.siot.IamportRestClient.IamportClient;
// import com.siot.IamportRestClient.exception.IamportResponseException;
// import com.siot.IamportRestClient.response.IamportResponse;
// import com.siot.IamportRestClient.response.Payment;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

// @Controller
// public class SaledItemController {
//     private IamportClient api;

//     public SaledItemController(){
//         // REST API 키와 REST API secret 를 아래처럼 순서대로 입력한다.
// 		this.api = new IamportClient("6123528723609391","bcf4c659bb721796a41accc009c841574611cf922e67c1a9ae8eed5777db209fe0987ad5849d8b73");
//     }
    
//     @ResponseBody
// 	@RequestMapping(value="/verifyIamport/{imp_uid}")
// 	public IamportResponse<Payment> paymentByImpUid(
// 			Model model
// 			, Locale locale
// 			, HttpSession session
// 			, @PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException
// 	{	
// 			return api.paymentByImpUid(imp_uid);
// 	}
    
// }
