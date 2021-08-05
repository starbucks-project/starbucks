package com.project.starbucksproject.domain.manager;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ManagerRepository extends JpaRepository<Manager, Integer> {

    @Query(value = "SELECT * FROM manager WHERE managerId = :managerId AND managerPw = :managerPw", nativeQuery = true)
    Manager mLogin(String managerId, String managerPw);
}
