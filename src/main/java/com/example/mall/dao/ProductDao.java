package com.example.mall.dao;

import com.example.mall.entity.Product;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Date;
import java.util.List;

public interface ProductDao extends JpaRepository<Product, Integer> {
    /**
     * 通过二级分类查找商品列表
     */
    List<Product> findByCsid(int csid, Pageable pageable);

    List<Product> findByCsidIn(List<Integer> csids,Pageable pageable);

    /**
     * 通过标题搜索商品
     */
    List<Product> findByTitleIsLike(String keyword, Pageable pageable);

    /**
     * 查找某个日期之后上架的商品
     */
    List<Product> findByPdateAfter(Date date, Pageable pageable);

    /**
     * 查找热门商品
     */
    List<Product> findByIsHot(int isHot,Pageable pageable);

    /**
     * 查询最新商品，最近上新的24个商品
     */
    @Query(value = "SELECT * FROM (SELECT  * FROM product ORDER BY pdate DESC limit 0,24) a /*#pageable*/",nativeQuery = true)
    List<Product> findNew(Pageable pageable);
}
