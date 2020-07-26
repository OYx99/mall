package com.example.mall.service;

import com.example.mall.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProductService {
    /**
     * 根据id查询
     */
    Product findById(int id);

    /**
     * 分页查询所有
     */
    Page<Product> findAll(Pageable pageable);

    /**
     * 查找热门商品
     */
    List<Product> findHotProduct();

    /**
     * 查找最新商品
     */
    List<Product> findNewProduct(Pageable pageable);

    /**
     * 根据一级分类查找商品
     */
    List<Product> findByCid(int cid,Pageable pageable);

    /**
     * 根据二级分类查找商品
     */
    List<Product> findByCsid(int csid,Pageable pageable);

    /**
     * 更新
     */
    void update(Product product);

    /**
     * 创建
     */
    int create(Product product);

    /**
     * 根据Id删除
     */
    void delById(int id);

}
