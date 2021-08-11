package com.project.starbucksproject.domain.saleditems;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface SaledItemsRepository extends JpaRepository<Saleditems, Integer> {
    @Query(value = "SELECT * FROM saleditems WHERE user_Id= :userId", nativeQuery = true)
    List<Saleditems> mfindAllByuserId(int userId);
}
