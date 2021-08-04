package com.project.starbucksproject.domain.manager;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ManagerRepository extends JpaRepository<Manager, Integer> {

    @Query(value = "SELECT * FROM manager WHERE manager_id = :manager_id AND manager_pw = :manager_pw", nativeQuery = true)
    Manager mLogin(String manager_id, String manager_pw);
}
