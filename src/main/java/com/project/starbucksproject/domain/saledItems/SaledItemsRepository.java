package com.project.starbucksproject.domain.saledItems;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

  
public interface SaledItemsRepository extends JpaRepository<SaledItems, Integer> {
    @Query(value = "SELECT * FROM saleditems WHERE user_Id= :userId", nativeQuery = true)
    List<SaledItems> mfindAllByuserId(int userId);

    @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON u.id= :userId", nativeQuery = true)  
  List<SaledItems> mfindByUsername(int userId);

}
