package com.project.starbucksproject.domain.manager;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ManagerRepository extends JpaRepository<Manager, Integer> {

    @Query(value = "SELECT * FROM manager WHERE managerId = :managerId AND managerPw = :managerPw", nativeQuery = true)
    Manager mLogin(String managerId, String managerPw);

    @Query(value = "SELECT COUNT(*) FROM saleditems", nativeQuery =true)
    long mfindAmount();

    @Query(value = "SELECT SUM(p.price) FROM saleditems s INNER JOIN product p ON  p.id=s.product_id", nativeQuery = true)
    long mTotalprice();
}
