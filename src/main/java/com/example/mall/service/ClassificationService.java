package com.example.mall.service;

import com.example.mall.entity.Classification;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ClassificationService {
    /**
     * 根据id查询
     */
    Classification findById(int id);

    /**
     * 按分类查询所有
     */
    List<Classification> findAll(int type);

    /**
     * 按分类查询所有
     */
    Page<Classification> findAll(int type,Pageable pageable);

    /**
     * 按条件查询
     */
    List<Classification> findAllExample(Example<Classification> example);

    /**
     * 更新
     */
    void update(Classification Classification);

    /**
     * 创建
     */
    int create(Classification Classification);

    /**
     * 根据Id删除
     */
    void delById(int id);

    /**
     * 通过一级分类id查找它所有的二级分类
     */
    List<Classification> findByParentId(int cid);
}
