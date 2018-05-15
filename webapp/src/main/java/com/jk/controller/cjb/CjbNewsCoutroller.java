package com.jk.controller.cjb;


import com.alibaba.fastjson.JSONObject;
import com.jk.bean.cjb.CjbNews;
import com.jk.service.CjbNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "cjbnewsController")
public class CjbNewsCoutroller {
    @Autowired
    private CjbNewsService cjbNewsService;
    @ResponseBody
    @RequestMapping(value = "querynews")
    public JSONObject querynews(){
        JSONObject list = cjbNewsService.querynews();
        return list;
    }
    @RequestMapping("addnewstiao")
    public String addnewstiao(){
        return "cjb/addnews";
    }


    @RequestMapping("addnews")
    @ResponseBody
    public Integer addnews(CjbNews news){
        cjbNewsService.addnews(news);
        return 111;
    }

    @RequestMapping("deletenews")
    @ResponseBody
    public Integer deletenews(Integer id){
        cjbNewsService.deletenews(id);
        return 111;
    }
    @RequestMapping("querytableid")
    public String  querytableid(Integer id, Model mo) {
        CjbNews news = cjbNewsService.querytableid(id);
        mo.addAttribute("aa",news);
        return "cjb/updatenews";
    }

    @RequestMapping("updatetable")
    @ResponseBody
    public Integer updatetable(CjbNews news){
        cjbNewsService.updatetable(news);
        return 111;
    }
}
