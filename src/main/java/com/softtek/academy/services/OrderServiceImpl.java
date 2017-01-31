package com.softtek.academy.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.softtek.academy.domain.Order;
import com.softtek.academy.repository.OrderRepository;

public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderRepository orderRepository;

	@Override
	public List<Order> getAllOrders() {
		return orderRepository.findAll();
	}

	@Override
	public Order getOrderById(Long id) {
		return orderRepository.findOne(id);
	}

	@Override
	public boolean deteleOrder() {
		// TODO Auto-generated method stub
		return false;
	}
}
