package com.jk.controller.mn;


import com.alibaba.fastjson.JSON;
import com.jk.bean.mn.Batch;
import com.jk.bean.mn.Shop;
import com.jk.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("shop")
public class ShopController {
    @Autowired
    private ShopService shopService;
    @RequestMapping("queryShop")
    @ResponseBody
    public String queryShop(Integer page, Integer rows, Shop shop){
        Map map=shopService.queryShop(page,rows,shop);
        return JSON.toJSONString(map);
    }

    /**
     　　* @Description: 查询大类
     　　* @param ${tags}
     　　* @return ${return_type}
     　　* @throws
     　　* @author 马楠
     　　* @date 2018/5/14 19:51
     　　*/
    @RequestMapping("queryDalei")
    @ResponseBody
    private String queryDalei(){
        List list=shopService.queryDalei();
        return JSON.toJSONString(list);
    }

    @RequestMapping("queryXiaolei")
    @ResponseBody
    private String queryXiaolei(Integer id){
        List list=shopService.queryXiaolei(id);
        System.out.println(list);
        return JSON.toJSONString(list);
    }

    @RequestMapping("queryPici")
    @ResponseBody
    private String queryPici(){
        List<Batch> list=shopService.queryPici();
        return JSON.toJSONString(list);
    }

    @RequestMapping("addShop")
    @ResponseBody
    private String addShop(Shop shop){
        shop.setRid(1);
        shop.setTid(1);
        shopService.addShop(shop);
        /*Double zhehou=shop.getPrice()*(shop.getZhekou()/10);
        shop.setZhehouprice(zhehou);
        shopService.addShop(shop);*/
        return "addSuccess";
    }
    /**
    　　* @Description: 批删的方法
    　　* @param ${tags}
    　　* @return ${return_type}
    　　* @throws
    　　* @author 马楠
    　　* @date 2018/5/15 14:02
    　　*/
    @RequestMapping("deleteShop")
    @ResponseBody
    public String deleteShop(String ids){
       Integer flag= shopService.deleteShop(ids);
       if(flag>0){
           return "success";
       }
        return "feil";
    }
    
    /**
    　　* @Description: 回显
    　　* @param ${tags} 
    　　* @return ${return_type} 
    　　* @throws
    　　* @author 马楠
    　　* @date \ 14:04 
    　　*/
    @RequestMapping("queryShopById")
    public String queryShopById(Integer id, Model model){
       Shop shop= shopService.queryShopById(id);
       model.addAttribute("shop",shop);
        return "addShop";
    }

    @RequestMapping("updateShop")
    @ResponseBody
    public String updateShop(Shop shop){
        shop.setRid(1);
        shop.setTid(1);
        shopService.updateShop(shop);
        return "success";
    }




}
