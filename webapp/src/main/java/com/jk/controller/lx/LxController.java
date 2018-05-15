package com.jk.controller.lx;


import com.alibaba.fastjson.JSON;
import com.jk.bean.lx.Echarts;
import com.jk.bean.lx.User;
import com.jk.service.LxService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("LxController")
public class LxController {

    @Resource
    private LxService lxservice;


    @RequestMapping("queryuser")
    @ResponseBody
    public String  queryuser(String username, String password, HttpServletRequest request) {
        String code = (String)request.getSession().getAttribute("rand");
        String loginFlag = "";//扩大作用域
            loginFlag = lxservice.queryuser(username,password,request);

        return loginFlag;

    }
    @RequestMapping("echarts")
    @ResponseBody
    public String echarts(){
        List<Echarts> list = lxservice.echarts();
        return JSON.toJSONString(list);
    }

    @RequestMapping("updateusr")
    @ResponseBody
        public  String updateuser(HttpServletRequest request,String username,String password ){

        User user = (User) request.getSession().getAttribute("user");
        Integer uname = user.getId();
         lxservice.updateuser(uname,password);
        return "loginSuccess";
    }

        @RequestMapping("tiaoupdate")
    public String tiaoupdate(HttpServletRequest request,Model model){
        User user = (User) request.getSession().getAttribute("user");
        String uname = user.getUsername();
        model.addAttribute("uname",uname);
            return "updateuser";
    }
}
