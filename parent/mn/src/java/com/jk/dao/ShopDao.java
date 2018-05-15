package com.jk.dao;

import com.jk.bean.mn.Shop;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShopDao {
    Integer getTotal(Shop shop);

    List queryShop(@Param("page") Integer page, @Param("rows") Integer rows, @Param("shop") Shop shop);

    List queryDalei();

    List queryXiaolei(Integer id);

    List queryPici();

    void addShop(Shop shop);

    Integer deleteShop(List list);

    Shop queryShopById(Integer id);

    void updateShop(Shop shop);
}