package com.jk.dao;

import com.jk.bean.yq.Guestbook;
import com.jk.bean.yq.Orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther: 杨强
 * @Date: 2018/5/14 09:23
 * @Description:
 */
public interface OrderDao {
    List<Orders> yqqueryOrder();

    List<Orders> getqueryByPage(@Param("begin") Integer begin, @Param("end") Integer end);

    void deleteOrder(@Param("ids")String ids);

    void addguestbook(Guestbook guestbook);

    void addorder(Orders orders);

    Orders queryUpdateOrder(@Param("ids")String ids);

    void updateGuestbook(Guestbook guestbook);

    void updateorder(Orders orders);

    void updateordersstatus(Orders orders);
}
