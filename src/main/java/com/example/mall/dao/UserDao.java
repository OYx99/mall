package com.example.mall.dao;

import com.example.mall.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserDao extends JpaRepository<User, Integer> {

    User findByUsernameAndPassword(String username, String password);

    List<User> findByUsername(String username);
}
