package com.project.starbucksproject.domain.store;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface StoreRepository extends JpaRepository<Store, Integer> {
    @Query(value = "SELECT * FROM store WHERE category= :category", nativeQuery = true)
    List<Store> mfindAllByCategory(String category);
}
