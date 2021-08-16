package com.project.starbucksproject.web;

import java.util.List;

import com.project.starbucksproject.domain.store.Store;
import com.project.starbucksproject.domain.store.StoreRepository;
import com.project.starbucksproject.web.dto.CMRespDto;
import com.project.starbucksproject.web.dto.CMRespDto2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class StoreController {

  // DI
  //private final UserRepository userRepository;
  //private final HttpSession session;
  private final StoreRepository storeRepository;

  @PostMapping("/manager/store_regi")
  public String storeregi(Store store) {
    
    System.out.println(store);
    storeRepository.save(store);

    return "manager/store_regi";
  }

  @GetMapping("/manager/driveInfo")
  public @ResponseBody CMRespDto2<Store> driveInfo() {
    
    List<Store> driveList= storeRepository.mfindAllByCategory("drive");

    return new CMRespDto2<>(1, "성공", driveList);
  }

  @GetMapping("/manager/reserveInfo")
  public @ResponseBody CMRespDto2<Store> reserveInfo() {
    
    List<Store> reserveList= storeRepository.mfindAllByCategory("reserve");

    return new CMRespDto2<>(1, "성공", reserveList);
  }
    
}
