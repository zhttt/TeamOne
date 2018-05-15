package com.jk.controller.yq;

import com.jk.service.HuiyuanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Auther: 杨强
 * @Date: 2018/5/15 17:27
 * @Description:
 */
@Controller
@RequestMapping("yqhuiyuan")
public class HuiyuanController {
    @Autowired
    private HuiyuanService huiyuanService;
    @RequestMapping("queryshop")
    public Map<String,Object> queryshop(){
        String name="23";
        Map<String,Object> map=new HashMap<String,Object>();
        List list=huiyuanService.queryshop(name);
        map.put("list",list);
        return map;
    }
}
