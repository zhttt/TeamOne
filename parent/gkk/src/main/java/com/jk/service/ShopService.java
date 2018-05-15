package com.jk.service;

import com.jk.bean.gkk.TShopdalei;
import com.jk.bean.gkk.TShopxiaolei;

import java.util.List;

/**
 * Created by GKB on 2018/5/14.
 */
public interface ShopService {
    List queryshopdalei();

    void addshopdalei(TShopdalei tshopdalei);

    void deleteshopdaleibyid(Integer ids);

    void selectshopdaleibyid(TShopdalei tshopdalei);

    List<TShopxiaolei> selectshopxiaolei();

    void addshopxiaolei(TShopxiaolei shopxiaolei);

    void deleteshopxiaoleibyid(Integer id);

    TShopxiaolei selectshopxiaoleibyid(Integer id);
}
