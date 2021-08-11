package com.project.starbucksproject.domain.saledItems;

import java.util.List;
<<<<<<< HEAD

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
=======
>>>>>>> ab67adb798eb518aade4bc5f9ef95ab717a00d1a

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

<<<<<<< HEAD
  @Query(value = "SELECT * FROM saleditems s INNER JOIN user u ON u.id= :userId", nativeQuery = true)  
  List<Saleditems> mfindByUsername(int userId);

=======
public interface SaledItemsRepository extends JpaRepository<SaledItems, Integer> {
    @Query(value = "SELECT * FROM saleditems WHERE user_Id= :userId", nativeQuery = true)
    List<SaledItems> mfindAllByuserId(int userId);
>>>>>>> ab67adb798eb518aade4bc5f9ef95ab717a00d1a
}
