package com.project.starbucksproject.domain.saleditems;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

  
public interface SaleditemsRepository extends JpaRepository<Saleditems, Integer> {
    @Query(value = "SELECT * FROM saleditems WHERE user_Id= :userId", nativeQuery = true)
    List<Saleditems> mfindAllByuserId(int userId);

    @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON u.id= :userId", nativeQuery = true)  
  List<Saleditems> mfindByUsername(int userId);

}
