package com.project.starbucksproject.web;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.manager.Manager;
import com.project.starbucksproject.domain.manager.ManagerRepository;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.saleditems.SaledItemsRepository;
import com.project.starbucksproject.domain.saleditems.Saleditems;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;
import com.project.starbucksproject.web.dto.ProductSearchReqDto;
import com.project.starbucksproject.web.dto.ProductSearchRespDto;
import com.project.starbucksproject.web.dto.UserDto;
import com.project.starbucksproject.web.dto.UserSearchReqDto;
import com.project.starbucksproject.web.dto.UserSearchRespDto;

import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Producer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javassist.bytecode.Mnemonic;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ManagerController {

  private final UserRepository userRepository;
  private final ProductRepository productRepository;
  private final ManagerRepository managerRepository;
  private final SaledItemsRepository saledItemsRepository;
  private final HttpSession session;

  @GetMapping("/manager")
  public String managerHome(Model model) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }
    model.addAttribute("productsEntity", productRepository.findAll());

    return "manager/managerHome";
  }

  // 상품 상세보기 페이지로 이동
  @GetMapping("/manager/detail/{id}")
  public String productDetailForm(@PathVariable int id, Model model) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }
    Product productEntity = productRepository.findById(id).get();
    model.addAttribute("productEntity", productEntity);

    return "manager/productDetail";
  }

  // 상품 판매 현황 페이지로 이동
  @GetMapping("/manager/saledProduct")
  public String saledProductForm(Model model, Integer page) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }
    if (page == null) {
      page = 0;
    }
    List<Saleditems> saleditems = saledItemsRepository.findAll();
    if (saleditems != null) {
      // 총 판매량
      Long amount = managerRepository.mfindAmount();
      // 총 판매 액
      Long totalPrice = managerRepository.mTotalprice();
      model.addAttribute("amount", amount);
      model.addAttribute("totalPrice", totalPrice);
    }
    model.addAttribute("saledItemsEntity", saledItemsRepository.findAll(PageRequest.of(page, 5)));

    return "manager/saledProduct";
  }

  // 판매현황 페이지에서 이름 검색 했을 때
  @PostMapping("/manager/saleditemsByName")
  public @ResponseBody UserSearchRespDto<List> saledItemsByName(@RequestBody UserSearchReqDto dto) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    // saleditems 정보를 가질 list 선언
    List<Saleditems> saleditemsEntity = new ArrayList<>();

    // 관리자 로그인 되어 있다면
    if (managerEntity != null) {

      saleditemsEntity = saledItemsRepository.mfindItemByName(dto.getName());

      if (saleditemsEntity == null) {
        return new UserSearchRespDto<>(-1, "이름 검색 실패", saleditemsEntity);
      }
      // 정상적으로 이름이 검색 됐을 때
      return new UserSearchRespDto<>(1, "이름 검색 성공", saleditemsEntity);

    } else {
      return new UserSearchRespDto<>(0, "세션 만료", saleditemsEntity);
    } // end outer if-else

  }

  // 판매현황 카테고리 검색
  @PostMapping("/manager/searchCategory")
  public @ResponseBody ProductSearchRespDto<List> searchByCategory(@RequestBody ProductSearchReqDto dto) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");

    List<Saleditems> saleditemsEntity = new ArrayList<>();
    if (managerEntity != null) {
      saleditemsEntity = saledItemsRepository.mfindItemByCategory(dto.getCategory());
      if (saleditemsEntity == null) {
        return new ProductSearchRespDto<>(-1, "카테고리 상품 찾기 실패", saleditemsEntity);
      }

      return new ProductSearchRespDto<>(1, "카테고리 상품 찾기 성공", saleditemsEntity);
    } else {
      return new ProductSearchRespDto<>(0, "세션 만료", saleditemsEntity);
    }

  }

  // 상품 삭제 버튼 눌렀을 때
  @PostMapping("/manager/deleteProduct/{id}")
  public String deleteProduct(@PathVariable int id) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }

    productRepository.deleteById(id);

    return "redirect:/manager";
  }

  // 상품 수정 페이지로 이동
  @GetMapping("/manager/product/{id}")
  public String updateForm(@PathVariable int id, Model model) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }
    Product productEntity = productRepository.findById(id).get();
    model.addAttribute("productEntity", productEntity);

    return "manager/updateProduct";
  }

  // 수정 완료 후 상품 상세보기 페이지로 이동
  @PostMapping("/manager/product/{id}")
  public String update(@PathVariable int id, Product product, MultipartFile productImage) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }
    Product productEntity = productRepository.findById(id).get();

    String imageFileName = productImage.getOriginalFilename();
    System.out.println("imageFileName : " + imageFileName);
    if (imageFileName == null || imageFileName.equals("")) {
    } else {
      productEntity.setProductImg(imageFileName);
    }
    productEntity.setCategory(product.getCategory());
    productEntity.setProductName(product.getProductName());
    productEntity.setProductNameEng(product.getProductNameEng());
    productEntity.setPrice(product.getPrice());
    productEntity.setProductInfo(product.getProductInfo());
    productEntity.setKcal(product.getKcal());
    productEntity.setSaturatedFat(product.getSaturatedFat());
    productEntity.setProtein(product.getProtein());
    productEntity.setNatrium(product.getNatrium());
    productEntity.setSugar(product.getSugar());
    productEntity.setCaffeine(product.getCaffeine());

    productRepository.save(productEntity);

    return "redirect:/manager/detail/{id}";
  }

  // 회원 관리 페이지 이동
  @GetMapping("/manager/userlist")
  public String userlistForm(Model model, Integer page) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }

    if (page == null) {
      page = 0;
    }
    List<UserDto> usersEntity = userRepository.mfindUserBalace();
    System.out.println("===============\n" + usersEntity + "\n================");
    // Model userEntity = model.addAttribute("usersEntity",
    // userRepository.mfindUserBalace(PageRequest.of(page, 5)));

    model.addAttribute("usersEntity", usersEntity);

    return "manager/manageUser";
  }

  // 회원 관리 페이지에서 이름 검색 했을 때
  @PostMapping("/manager/searchname")
  public @ResponseBody UserSearchRespDto<List> searchUser(@RequestBody UserSearchReqDto dto) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    List<User> userEntity = userRepository.mfindUserList(dto.getName());

    if (managerEntity != null) {

      if (userEntity != null) {
        return new UserSearchRespDto<>(1, "사용자 찾기 성공", userEntity);
      } else {
        return new UserSearchRespDto<>(-1, "사용자 찾기 실패", userEntity);
      }
    } else {
      return new UserSearchRespDto<>(0, "세션 만료", userEntity);
    }

  }

  // 상품 등록 페이지 이동
  @GetMapping("/manager/uploadForm")
  public String uploadProductForm() {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }
    return "manager/uploadProduct";
  }

  // 상품 업로드
  @PostMapping("/manager/upload")
  public String upload(Product product, MultipartFile productImage) {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }

    System.out.println(product);

    // 저장될 파일 이름
    String imageFileName = productImage.getOriginalFilename();

    product.setProductImg(imageFileName);

    Product productEntity = productRepository.save(product);
    if (productEntity == null) {
      System.out.println("productEntity is null");
    } else {
      System.out.println(productEntity);
    }

    return "redirect:/manager";
  }

  // manager Login
  @PostMapping("/manager/login")
  public String managerLogin(Manager manager) {
    Manager managerEntity = managerRepository.mLogin(manager.getManagerId(), manager.getManagerPw());

    if (managerEntity == null) {
      System.out.println("managerEntity is null");

      return "auth/managerLoginForm";
    } else {

      session.setAttribute("managerPrincipal", managerEntity);
      return "redirect:/manager";
    }

  }

  // manager Logout
  @GetMapping("/manager/logout")
  public String managerLogout() {
    Manager managerEntity = (Manager) session.getAttribute("managerPrincipal");
    if (managerEntity == null) {
      return "auth/managerLoginForm";
    }
    session.invalidate();
    return "redirect:/";
  }

}
