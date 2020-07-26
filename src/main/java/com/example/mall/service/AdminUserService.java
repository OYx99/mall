package com.example.mall.service;

import com.example.mall.entity.AdminUser;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface AdminUserService {
    /**
     * 根据id查询
     */
    AdminUser findById(int id);

    /**
     * 分页查询所有
     */
    Page<AdminUser> findAll(Pageable pageable);

    /**
     * 按条件查询
     */
    List<AdminUser> findAllExample(Example<AdminUser> example);

    /**
     * 更新
     */
    void update(AdminUser adminUser);

    /**
     * 创建
     */
    int create(AdminUser adminUser);

    /**
     * 根据Id删除
     */
    void delById(int id);

    /**
     * 检查登录
     */
    AdminUser checkLogin(HttpServletRequest request,String username, String pwd);

}
