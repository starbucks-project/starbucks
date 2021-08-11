package com.project.starbucksproject.domain.card;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CardRepository extends JpaRepository<Card, Integer> {
    @Query(value = "SELECT * FROM card WHERE userId= :userId", nativeQuery = true)
    List<Card> mfindByAlluserId(int userId);

    @Query(value = "SELECT * FROM card WHERE userId= :userId", nativeQuery = true)
    Page<Card> mfindByIdPage(int userId, Pageable pageable);
}
