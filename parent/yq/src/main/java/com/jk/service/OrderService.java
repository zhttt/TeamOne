package com.jk.service;

import com.jk.bean.yq.Guestbook;
import com.jk.bean.yq.Orders;

import java.util.List;

/**
 * @Auther: 杨强
 * @Date: 2018/5/14 09:17
 * @Description:
 */
public interface OrderService {
    List<Orders> yqqueryOrder();

    List<Orders> getqueryByPage(Integer page, Integer rows);

    void deleteOrder(String ids);

    void addorder(Orders orders, Guestbook guestbook);

    void updateorder(Orders orders, Guestbook guestbook);

    Orders queryUpdateOrder(String ids);

    void updateordersstatus(Orders orders);
}
