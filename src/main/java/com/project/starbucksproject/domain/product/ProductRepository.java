package com.project.starbucksproject.domain.product;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    @Query(value = "SELECT * FROM product WHERE category= :category", nativeQuery = true)
    List<Product> mfindAllByCategory(String category);
}
