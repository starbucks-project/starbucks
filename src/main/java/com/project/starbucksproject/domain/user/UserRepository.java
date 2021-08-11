package com.project.starbucksproject.domain.user;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Integer> {

    @Query(value = "SELECT * FROM user WHERE email= :email", nativeQuery = true)
    User mfindByemail(String email);

    @Query(value = "SELECT * FROM user WHERE name= :name", nativeQuery = true)
    User mfindByName(String name);
}
