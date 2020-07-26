package com.example.mall.service;

import com.example.mall.entity.OrderItem;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 购物车
 */
public interface ShopCartService {

    String NAME_PREFIX = "shop_cart_";

    /**
     * 加购物车
     */
    void addCart(int productId, HttpServletRequest request) throws Exception;

    /**
     * 移除
     */
    void remove(int productId, HttpServletRequest request) throws Exception;

    /**
     * 查看购物车
     */
    List<OrderItem> listCart(HttpServletRequest request) throws Exception;

    /**
     * 清空购物车
     */
    void clear(HttpServletRequest request) throws Exception;
}
