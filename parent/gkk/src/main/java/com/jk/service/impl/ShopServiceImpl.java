package com.jk.service.impl;

import com.jk.bean.gkk.TShopdalei;
import com.jk.bean.gkk.TShopxiaolei;
import com.jk.dao.ShopDao;
import com.jk.service.ShopService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by GKB on 2018/5/14.
 */
@Service
public class ShopServiceImpl implements ShopService {

    @Resource
    private ShopDao shopDao;

    //查询商品大类
    public List queryshopdalei() {
        return shopDao.queryshopdalei();
    }

    //新增商品大类
    public void addshopdalei(TShopdalei tshopdalei) {
        shopDao.addshopdalei(tshopdalei);
    }

    //删除商品大类
    public void deleteshopdaleibyid(Integer ids) {
        shopDao.deleteshopdaleibyid(ids);
    }

    //修改商品大类
    public void selectshopdaleibyid(TShopdalei tshopdalei) {
        shopDao.selectshopdaleibyid(tshopdalei);
    }

    //查询小类
    public List<TShopxiaolei> selectshopxiaolei() {
        return shopDao.selectshopxiaolei();
    }

    //新增小类
    public void addshopxiaolei(TShopxiaolei shopxiaolei) {
        shopDao.addshopxiaolei(shopxiaolei);
    }

    //删除小类
    public void deleteshopxiaoleibyid(Integer id) {
        shopDao.deleteshopxiaoleibyid(id);
    }


    public TShopxiaolei selectshopxiaoleibyid(Integer id) {
        return shopDao.selectshopxiaoleibyi(id);
    }


}
