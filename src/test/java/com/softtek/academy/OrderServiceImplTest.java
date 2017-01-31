package com.softtek.academy;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.transaction.TransactionalTestExecutionListener;

import com.github.springtestdbunit.DbUnitTestExecutionListener;
import com.github.springtestdbunit.annotation.DatabaseOperation;
import com.github.springtestdbunit.annotation.DatabaseSetup;
import com.softtek.academy.domain.Order;
import com.softtek.academy.domain.User;
import com.softtek.academy.services.OrderService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(inheritLocations = true)
@DatabaseSetup(value = { "/dataset/default.xml" }, type = DatabaseOperation.CLEAN_INSERT)
@TestExecutionListeners({ DependencyInjectionTestExecutionListener.class, DirtiesContextTestExecutionListener.class,
		TransactionalTestExecutionListener.class, DbUnitTestExecutionListener.class })
public class OrderServiceImplTest {

	@Autowired
	private OrderService orderService;
	
	@Test
	@DatabaseSetup(value="/dataset/scenario1.xml", type=DatabaseOperation.CLEAN_INSERT)
	public void testOrderServiceListNotNull() {
		List<Order> orderList;
		orderList = orderService.getAllOrders();
		System.out.println(orderList);
		Assert.assertNotNull(orderList);
	}
	
	
	@Test
	@DatabaseSetup(value="/dataset/scenario1.xml", type=DatabaseOperation.CLEAN_INSERT)
	public void testOrderServicesGetOneByIdNotNull(){
		Order testOrder = new Order(10L , new User(1L, "monicarz", "becky123", "Monica"));
		List<Order> orderList = new ArrayList<Order>();
		System.out.println(orderList);
		orderList.add(testOrder);
		System.out.println(orderService.getOrderById(10L));
	}

}
