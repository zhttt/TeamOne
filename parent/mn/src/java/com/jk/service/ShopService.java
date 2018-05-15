package com.jk.service;

import com.jk.bean.mn.Shop;

import java.util.List;
import java.util.Map;

public interface ShopService {
    Map queryShop(Integer page, Integer rows, Shop shop);

    List queryDalei();

    List queryXiaolei(Integer id);

    List queryPici();

    void addShop(Shop shop);

    Integer deleteShop(String ids);

    Shop queryShopById(Integer id);

    void updateShop(Shop shop);
}
