package com.project.starbucksproject.web;

import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.mymenu.MyMenuRepository;
import com.project.starbucksproject.domain.mymenu.Mymenu;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;
import com.project.starbucksproject.web.dto.CMRespDto;
import com.project.starbucksproject.web.dto.MymenuDelReqDto;
import com.project.starbucksproject.web.dto.MymenuSaveReqDto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.RequestScope;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MymenuController {

  // DI
  private final UserRepository userRepository;
  private final HttpSession session;
  private final ProductRepository productRepository;
  private final MyMenuRepository myMenuRepository;
  //private final ManagerRepository managerRepository;

  //마이메뉴 페이지
  @GetMapping("/user/mymenu")
    public String mymenuForm(Model modelMymenu,Model modelProduct ) {
      //인증된 사용자 : session에 저장된 User객체 들고오기
	    User principal=(User)session.getAttribute("principal");
      //인증안된 사용자는 쫓아내면 된다!
	    if(principal==null) {
		  return "redirect:/auth/login";//주소를 호출, 인증안된 사용자 접근에 대해선 친절히 alert안해줘도 된다
		}
      int userId=principal.getId();
      List<Mymenu> mymenuEntity=myMenuRepository.mfindByuserId(userId);
      modelMymenu.addAttribute("mymenuEntity",mymenuEntity);

        return "user/mymenu";
    }

  //마이메뉴 product별로 팝업창 띄우기 
  @GetMapping("/user/mymenuPop/{id}")
  public @ResponseBody CMRespDto<Product> mymenuPop(@PathVariable int id) {
    Mymenu mymenuEntity=myMenuRepository.findById(id).get();
    Product product=mymenuEntity.getProducts(); 
    
    return new CMRespDto<>(1, "성공", product);
  }

  //product 마이메뉴에 등록하기(save)
  @PostMapping("/user/mymenuRegi")
  public @ResponseBody CMRespDto<Mymenu> mymenuRegi(@RequestBody MymenuSaveReqDto mymenuSaveReqDto) {
    System.out.println("나 실행됨??/user/mymenuRegi");
    //인증된 사용자 : session에 저장된 User객체 들고오기
    User principal=(User)session.getAttribute("principal");
    //인증안된 사용자는 쫓아내면 된다!
    if(principal==null) {
    return new CMRespDto<>(0, "로그인하세요", null);
   }

    Mymenu mymenu=new Mymenu();
    Product product=productRepository.findById(mymenuSaveReqDto.getProductId()).get();
    //User principal=(User)session.getAttribute("principal");
    mymenu.setProducts(product);
    mymenu.setUser(principal);
    mymenu.setProNickname(mymenuSaveReqDto.getProNickname());

    Mymenu mymenuEntity= myMenuRepository.save(mymenu);
    System.out.println("나 실행됨??/user/mymenuRegi 2222");

    return new CMRespDto<>(1, "성공", mymenuEntity);
  }

  /*
  @GetMapping("/user/mymenu/{id}")
  public String mymenu(@PathVariable int id,Model model) {
    Product productEntity=productRepository.findById(id).get();
    model.addAttribute("productEntity",productEntity);
    return "auth/drink_detail";
  }
  */

  //마이메뉴 삭제
  @DeleteMapping("/user/mymenuDel")
  public @ResponseBody String mymenuDel(@RequestBody MymenuDelReqDto<String> dto ) {
    int length=dto.getLength();
    ArrayList<String> arr=dto.getArr();
    System.out.println(length);
    System.out.println(dto.getArr());

    if(arr == null) {
      return "fail";
    } 
    for (int i = 1; i < length; i++) {
      
      String id_str=arr.get(i);
      System.out.println(id_str);

      int id=Integer.parseInt(id_str);
      System.out.println(id);
      myMenuRepository.deleteById(id);
      
    }
    return "ok";
  }

}
