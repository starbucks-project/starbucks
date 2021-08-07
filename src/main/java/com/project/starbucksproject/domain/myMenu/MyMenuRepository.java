package com.project.starbucksproject.domain.mymenu;

<<<<<<< HEAD

import java.util.List;

=======
>>>>>>> 54e72f717f0dc6d50f28ae7d22220ca269d83b73
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MyMenuRepository extends JpaRepository<Mymenu, Integer> {

<<<<<<< HEAD
public interface MyMenuRepository extends JpaRepository<Mymenu, Integer> {  
    
    @Query(value = "SELECT * FROM mymenu WHERE userId= :userId", nativeQuery = true)
    List<Mymenu> mfindByuserId(int userId);
    
=======
>>>>>>> 54e72f717f0dc6d50f28ae7d22220ca269d83b73
}
