package com.jk.service.impl;

import com.jk.bean.mn.Shop;
import com.jk.dao.ShopDao;
import com.jk.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class ShopServiceImpl implements ShopService {
    @Autowired
    private ShopDao shopDao;
/**
　　* @Description: 查询商品信息
　　* @param ${tags}
　　* @return ${return_type}
　　* @throws
　　* @author 马楠
　　* @date 2018/5/14 19:51
　　*/
    public Map queryShop(Integer page, Integer rows, Shop shop) {
        Integer total=shopDao.getTotal(shop);
        page=(page-1)*rows+1;
        List list= shopDao.queryShop(page,rows,shop);
        Map map=new HashMap();
        map.put("total",total);
        map.put("rows",list);
        return map;
    }

    public List queryDalei() {
        return shopDao.queryDalei();
    }

    public List queryXiaolei(Integer id) {

        return shopDao.queryXiaolei(id);
    }

    public List queryPici() {
        return shopDao.queryPici();
    }

    public void addShop(Shop shop) {
       double zhekou=shop.getZhekou();
        if(zhekou>=10){
            shop.setTid(2);
        }else if(zhekou<10){
            shop.setTid(1);
        }
        shopDao.addShop(shop);
    }

    public Integer deleteShop(String ids) {
        String[] str=ids.split(",");
        List list=new ArrayList();
        for (String id:str) {
            list.add(id);
        }
        return shopDao.deleteShop(list);
    }

    public Shop queryShopById(Integer id) {
        return shopDao.queryShopById(id);
    }

   public void updateShop(Shop shop) {
        shopDao.updateShop(shop);
    }


}
