package com.jk.controller.yq;

import com.jk.bean.util.ExportExcel;
import com.jk.bean.yq.Guestbook;
import com.jk.bean.yq.Orders;
import com.jk.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @Auther: 杨强
 * @Date: 2018/5/14 09:16
 * @Description:
 */
@Controller
@RequestMapping("yqorder")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping("/queryOrder")
    @ResponseBody
    public Map<String,Object> queryOrder(Integer page, Integer rows){
        /**
         *
         * 功能描述: 查询
         *
         * @param: [page, rows]
         * @return: java.util.Map<java.lang.String,java.lang.Object>
         * @auther: 杨强
         * @date: 2018/5/14 15:51
         */
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("total", orderService.yqqueryOrder().size());
        map.put("rows", orderService.getqueryByPage(page,rows));
        return map;

    }
    @RequestMapping("deleteOrder")
    @ResponseBody
    public Map<String,Object> deleteOrder(String ids){
        /**
         *
         * 功能描述: 删除
         *
         * @param: [ids]
         * @return: java.util.Map<java.lang.String,java.lang.Object>
         * @auther: 杨强
         * @date: 2018/5/14 15:51
         */
        Map<String,Object> map = new HashMap<String, Object>();
        try {
            orderService.deleteOrder(ids);
            map.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success", false);
        }
        return map;
    }
    @RequestMapping("addOrder")
    @ResponseBody
    public Map<String,Object> addOrder(Orders orders, Guestbook guestbook, HttpServletRequest request,HttpServletResponse response){
        /**
         *
         * 功能描述: 新增修改
         *
         * @param: []
         * @return: java.lang.String
         * @auther: 杨强
         * @date: 2018/5/10 17:31
         */
        Map<String,Object> map=new HashMap<String, Object>();
        String sdf=new SimpleDateFormat("yyyy-MM-dd").format(new Date());


        if(orders.getOrdersid()==null){
            guestbook.setGusername("111");
            guestbook.setGcreateTime(sdf);
            guestbook.setGstatus(2);

            orderService.addorder(orders,guestbook);
            map.put("success", true);
        }else{
            orderService.updateorder(orders,guestbook);
            map.put("success", true);
        }
        return map;
    }
    @RequestMapping("queryUpdateOrder")
    @ResponseBody
    public ModelAndView queryUpdateOrder(String ids){
        /**
         *
         * 功能描述: 修改的查询
         *
         * @param: [ids]
         * @return: org.springframework.web.servlet.ModelAndView
         * @auther: 杨强
         * @date: 2018/5/15 17:28
         */
        ModelAndView mav=new ModelAndView("/yqaddorder");
        Orders orders=orderService.queryUpdateOrder(ids);
        mav.addObject("aa",orders);
        return mav;
    }
    @RequestMapping("updateordersstatus")
    @ResponseBody
    public Map<String,Object> updateordersstatus(Orders orders){
        /**
         *
         * 功能描述: 提交订单
         *
         * @param: [orders]
         * @return: java.util.Map<java.lang.String,java.lang.Object>
         * @auther: 杨强
         * @date: 2018/5/15 17:28
         */
        Map<String,Object> map=new HashMap<String, Object>();
        orders.setOrdersstatus(1);
        orderService.updateordersstatus(orders);
        map.put("success", true);
        return map;
    }
    @RequestMapping("excelOrder")
    @ResponseBody
    public void excelOrder(HttpServletResponse response,HttpServletRequest request) {
/**
 *
 * 功能描述: excel导出
 *
 * @param: [response, request]
 * @return: void
 * @auther: 杨强
 * @date: 2018/5/15 17:27
 */
        List list=orderService.yqqueryOrder(); //  查询数据
        //  设置标头
        String [ ] rowName={"id","订单编号","创建时间","总钱数","订单的产品","订单中的产品数量","订单状态","订单人id","修改时间"};
        List<Object[]> dataList=new ArrayList<Object[]>();
        /*for (int i = 0; i < list.size(); i++) {
            LinkedHashMap<String,Object>  map = (LinkedHashMap<String, Object>) list.get(i);

            Object[] array = map.values().toArray();
            dataList.add(array);
        }*/
        List <Orders> l = (List <Orders>)list;
        for (Orders ord:
            l ) {
            Object[] obj = new Object[]{
                    ord.getOrdersid(),
                    ord.getOrderscode(),
                    ord.getOrderscreattime(),
                    ord.getOrdersmoney(),
                    ord.getOrdersproduct(),
                    ord.getOrderspronum(),
                    ord.getOrdersstatus(),
                    ord.getOrdersuser(),
                    ord.getOrdersupdatadata(),
            };
            dataList.add(obj);
        }
        ExportExcel exportExcel = new ExportExcel("订单信息",rowName, dataList, response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
