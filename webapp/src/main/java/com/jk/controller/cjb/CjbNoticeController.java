package com.jk.controller.cjb;


import com.alibaba.fastjson.JSONObject;
import com.jk.bean.cjb.CjbNews;
import com.jk.bean.cjb.CjbNotice;
import com.jk.service.CjbNewsService;
import com.jk.service.CjbNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("cjbnoticeController")
public class CjbNoticeController {
    @Autowired
    private CjbNoticeService cjbNoticeService;

    @ResponseBody
    @RequestMapping(value = "querynotice")
    public JSONObject querynotice(){
        JSONObject list = cjbNoticeService.querynotice();
        return list;
    }
    @RequestMapping("addnoticetiao")
    public String addnoticetiao(){
        return "cjb/addnotice";
    }
    @RequestMapping("addnotice")
    @ResponseBody
    public Integer addnotice(CjbNotice notice){
        cjbNoticeService.addnotice(notice);
        return 111;
    }
    @RequestMapping("deletenotice")
    @ResponseBody
    public Integer deletenotice(Integer id){
        cjbNoticeService.deletenotice(id);
        return 111;
    }
    @RequestMapping("updatetablequeryid")
    public String  querytableid(Integer id, Model mo) {
        CjbNotice notice = cjbNoticeService.querytableid(id);
        mo.addAttribute("bb",notice);
        return "cjb/updatenotice";
    }
    @RequestMapping("updatetable")
    @ResponseBody
    public Integer updatetable(CjbNotice notice){
        cjbNoticeService.updatetable(notice);
        return 111;
    }


}
