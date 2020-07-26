package com.example.mall.dao;

import com.example.mall.entity.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderItemDao extends JpaRepository<OrderItem, Integer> {

    List<OrderItem> findByOrderId(int orderId);

}
