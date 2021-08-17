package com.project.starbucksproject.domain.mymenu;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MyMenuRepository extends JpaRepository<Mymenu, Integer> {

    @Query(value = "SELECT * FROM mymenu WHERE userId= :userId", nativeQuery = true)
    List<Mymenu> mfindByuserId(int userId);

}
