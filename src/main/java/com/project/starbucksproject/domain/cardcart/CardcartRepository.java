package com.project.starbucksproject.domain.cardcart;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CardcartRepository extends JpaRepository<Cardcart,Integer> {
    @Query(value = "SELECT * FROM cardcart WHERE user_id= :userId", nativeQuery = true)
    List<Cardcart> mfindAllByuserId(int userId);
}
