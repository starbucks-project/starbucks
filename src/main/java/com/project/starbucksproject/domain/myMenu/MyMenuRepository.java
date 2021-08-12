package com.project.starbucksproject.domain.myMenu;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface MyMenuRepository extends JpaRepository<MyMenu, Integer> {  
    
    @Query(value = "SELECT * FROM mymenu WHERE userId= :userId", nativeQuery = true)
    List<MyMenu> mfindByuserId(int userId);
    
}
   