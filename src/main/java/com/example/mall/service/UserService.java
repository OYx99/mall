package com.example.mall.service;

import com.example.mall.entity.User;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface UserService {
    /**
     * 根据id查询
     */
    User findById(int id);

    /**
     * 分页查询所有
     */
    Page<User> findAll(Pageable pageable);

    /**
     * 按条件查询
     */
    List<User> findAllExample(Example<User> example);

    /**
     * 更新
     */
    void update(User user);

    /**
     * 创建
     */
    int create(User user);

    /**
     * 根据Id删除
     */
    void delById(int id);

    /**
     * 根据用户名查询
     */
    List<User> findByUsername(String username);

    /**
     * 检查登录
     */
    User checkLogin(String username,String password);


}
