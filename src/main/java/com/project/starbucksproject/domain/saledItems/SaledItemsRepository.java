package com.project.starbucksproject.domain.saleditems;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface SaledItemsRepository extends JpaRepository<Saleditems, Integer> {
  @Query(value = "SELECT * FROM saleditems WHERE user_Id= :userId", nativeQuery = true)
  List<Saleditems> mfindAllByuserId(int userId);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON s.user_id = :userId", nativeQuery = true)
  Saleditems mfindByUsername(int userId);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON s.user_id = :userId", nativeQuery = true)
  List<Saleditems> mfindSaledList(int userId);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON s.product_id = :productId", nativeQuery = true)
  List<Saleditems> mfindByCategory(int productId);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON s.user_id = u.id AND u.name = :name", nativeQuery = true)
  List<Saleditems> mfindItemByName(String name);

  @Query(value = "SELECT * FROM saleditems s INNER JOIN product p ON s.product_id = p.id AND p.category = :category", nativeQuery = true)
  List<Saleditems> mfindItemByCategory(String category);
}
