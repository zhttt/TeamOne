package com.jk.service.impl;

import com.jk.bean.yq.Guestbook;
import com.jk.bean.yq.Orders;
import com.jk.dao.OrderDao;
import com.jk.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: 杨强
 * @Date: 2018/5/14 09:21
 * @Description:
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao;
    public List<Orders> yqqueryOrder() {
        return orderDao.yqqueryOrder();
    }

    public List<Orders> getqueryByPage(Integer page, Integer rows) {
        Integer begin = (page-1)*rows+1;
        Integer end = page*rows;
        return orderDao.getqueryByPage(begin-1,end);

    }

    public void deleteOrder(String ids) {
        orderDao.deleteOrder(ids);
    }

    public void addorder(Orders orders, Guestbook guestbook) {
        orderDao.addguestbook(guestbook);
        orderDao.addorder(orders);
    }

    public void updateorder(Orders orders, Guestbook guestbook) {
        orderDao.updateGuestbook(guestbook);
        orderDao.updateorder(orders);
    }

    public Orders queryUpdateOrder(String ids) {
        return orderDao.queryUpdateOrder(ids);
    }

    public void updateordersstatus(Orders orders) {
        orderDao.updateordersstatus(orders);
    }
}
