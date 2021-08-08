package com.project.starbucksproject.domain.cart;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CartRepository extends JpaRepository<Cart, Integer> {
    
    @Query(value = "SELECT * FROM cart WHERE user_Id= :userId", nativeQuery = true)
    List<Cart> mfindAllByuserId(int userId);
    
}
