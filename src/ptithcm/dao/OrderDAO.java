package ptithcm.dao;

import java.util.List;

import ptithcm.entity.Order;
import ptithcm.entity.OrderDetail;

public interface OrderDAO {
	
	List<Order> getOrders();
	
	List<Order> getOrder(int accountId);
	
	List<Order> getOrderAll();
	
	List<OrderDetail> getOrdersDetail(int orderId);
	
	boolean insertOrder(Order order);
	
	boolean insertOrderDetail(OrderDetail orderDetail);
	
	int updateStatus(int orderId, int status);
}
