package com.project.starbucksproject.domain.saledItems;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface SaledItemsRepository extends JpaRepository<SaledItems, Integer> {
  @Query(value = "SELECT * FROM saleditems WHERE user_Id= :userId", nativeQuery = true)
  List<SaledItems> mfindAllByuserId(int userId);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON s.user_id = :userId", nativeQuery = true)
  SaledItems mfindByUsername(int userId);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON s.user_id = :userId", nativeQuery = true)
  List<SaledItems> mfindSaledList(int userId);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON s.product_id = :productId", nativeQuery = true)
  List<SaledItems> mfindByCategory(int productId);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON s.user_id = u.id AND u.name = :name", nativeQuery = true)
  List<SaledItems> mfindItemByName(String name);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN product p ON s.product_id = p.id AND p.category = :category", nativeQuery = true)
  List<SaledItems> mfindItemByCategory(String category);
}
