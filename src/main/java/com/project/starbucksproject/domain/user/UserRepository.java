package com.project.starbucksproject.domain.user;

import java.util.List;

import com.project.starbucksproject.web.dto.UserDto;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Integer> {

    @Query(value = "SELECT * FROM user WHERE email= :email", nativeQuery = true)
    User mfindByemail(String email);

    @Query(value = "SELECT * FROM user WHERE name= :name", nativeQuery = true)
    User mfindByName(String name);

    @Query(value = "SELECT * FROM user WHERE name = :name", nativeQuery = true)
    List<User> mfindUserList(String name);

    // @Query(value = "SELECT SUM(c.balance) FROM User u INNER JOIN card c ON
    // c.userId=:id;", nativeQuery = true)
    // long mfindUserBalance(int id);

    @Query(value = "SELECT u.id, u.name, u.email, u.createDate, SUM(c.balance) FROM User u INNER JOIN card c ON c.userId=u.id GROUP BY u.id", nativeQuery = true)
    List<UserDto> mfindUserBalace();
}
