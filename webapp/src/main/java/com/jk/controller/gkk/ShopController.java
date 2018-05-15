package com.jk.controller.gkk;

import com.jk.bean.gkk.Batch;
import com.jk.bean.gkk.TShop;
import com.jk.bean.gkk.TShopdalei;
import com.jk.bean.gkk.TShopxiaolei;
import com.jk.service.BatchService;
import com.jk.service.ShopService;
import org.apache.poi.ss.formula.functions.T;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.xml.ws.Action;
import java.util.List;

/**
 * Created by GKB on 2018/5/14.
 */
@Controller
@RequestMapping("/shopaction")
public class ShopController {

    @Resource
    private ShopService shopService;

    /**
     * 查询商品大类
     * @return
     */
    @RequestMapping("queryshopdalei")
    @ResponseBody
    public List<TShop> queryshopdalei(){
        List list =  shopService.queryshopdalei();
        return list;
    }

    /**
     * 跳转新增页面
     */
    @RequestMapping("toaddshopdalei")
    public String  toaddshopdalei(){
        return "shop/addshopdalei";
    }

    /**
     * 新增大类
     */
    @RequestMapping("addshopdalei")
    @ResponseBody
    public String addshopdalei(TShopdalei tshopdalei){
        shopService.addshopdalei(tshopdalei);
        return "SUCCESS";
    }

    /**
     * 删除商品大类
     */
    @RequestMapping("deleteshopdaleibyid")
    @ResponseBody
    public void deleteshopdaleibyid(Integer id){
        shopService.deleteshopdaleibyid(id);
    }

    /**
     * 修改跳转页面
     */
    @RequestMapping("toupdateTShopdalei")
    public String toupdateTShopdalei(){
        return "shop/updateshopdalei";
    }

    /**
     * 根据id查询和修改大类
     */
    @RequestMapping("selectshopdaleibyid")
    @ResponseBody
    public void selectshopdaleibyid(TShopdalei tshopdalei){

        shopService.selectshopdaleibyid(tshopdalei);
    }

    /**
     * 查询小类
     */
    @RequestMapping("selectshopxiaolei")
    @ResponseBody
    public List<TShopxiaolei>  selectshopxiaolei(){

        List list = shopService.selectshopxiaolei();

        return list;
    }

    /**
     * 跳转新增小类
     */
    @RequestMapping("toaddshopxiaolei")
    public  String  toaddshopxiaolei(){

        return "shop/addshopxiaolei";
    }

    /**
     * 新增或者修改小类
     */
    @RequestMapping("addshopxiaolei")
    @ResponseBody
    public void addshopxiaolei(TShopxiaolei shopxiaolei){
        shopService.addshopxiaolei(shopxiaolei);
    }

    /**
     * 删除小类
     */
    @RequestMapping("deleteshopxiaoleibyid")
    @ResponseBody
    public void  deleteshopxiaoleibyid(Integer id){
        shopService.deleteshopxiaoleibyid(id);
    }

    /**
     * 修改前先查询
     */
    @RequestMapping("selectshopxiaoleibyid")
    @ResponseBody
    public String selectshopxiaoleibyid(Integer id, Model model){
       TShopxiaolei tshopxiaolei = shopService.selectshopxiaoleibyid(id);
        model.addAttribute("tshopxiaolei",tshopxiaolei);
        return "shop/updateshopxiaolei";
    }

}
