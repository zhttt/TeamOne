package com.jk.controller.mn;

import com.alibaba.fastjson.JSON;
import com.jk.bean.mn.Guestbook;
import com.jk.service.GuestbookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("guest")
public class GuestbookController {
    @Autowired
    private GuestbookService guestbookService;
    /**
    　　* @Description: 查询留言的方法
    　　* @param ${tags}
    　　* @return ${return_type}
    　　* @throws
    　　* @author 马楠
    　　* @date 2018/5/13 17:35
    　　*/
    @RequestMapping("queryGuestbook")
    @ResponseBody
    public String queryGuestbook(Integer page,Integer rows,Guestbook guestbook){
        Map map=guestbookService.queryGuestbook(page,rows,guestbook);
        return JSON.toJSONString(map);
    }

    /**
    　　* @Description: 删除的方法
    　　* @param ${tags}
    　　* @return ${return_type}
    　　* @throws
    　　* @author 马楠
    　　* @date 2018/5/13 20:15
    　　*/
    @RequestMapping("deleteGuestbook")
    @ResponseBody
    public String deleteGuestbook(String ids){
        Integer delcount=guestbookService.deleteGuestbook(ids);
        if(delcount>0){
            return "success";
        }
        return "fail";

    }
    /**
    　　* @Description: 通过id查询留言回显
    　　* @param ${tags}
    　　* @return ${return_type}
    　　* @throws
    　　* @author 马楠
    　　* @date 2018/5/14 11:05
    　　*/
    @RequestMapping("queryGuestbookById")
    public  String queryGuestById(Integer gid,Model model){
        Guestbook guestbook = guestbookService.queryGuestById(gid);
        model.addAttribute("guestbook", guestbook);
        return "updReturnGuestbook";
    }


/**
　　* @Description: 修改回复的留言
　　* @param ${tags}
　　* @return ${return_type}
　　* @throws
　　* @author 马楠
　　* @date 2018/5/14 11:06
　　*/

    @RequestMapping("updateGuestbook")
    @ResponseBody
    public String updateGuestbook(Guestbook guestbook){
        String nowtime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        guestbook.setGlastUpdTime(nowtime);
        guestbookService.updateGuestbook(guestbook);
        return "success";
    }
    /**
    　　* @Description: 回复留言的回显
    　　* @param ${tags}
    　　* @return ${return_type}
    　　* @throws
    　　* @author 马楠
    　　* @date 2018/5/14 11:07
    　　*/
    @RequestMapping("queryGuestByIdB")
    public  String queryGuestByIdB(Integer gid,Model model){
        Guestbook guestbook = guestbookService.queryGuestById(gid);
        model.addAttribute("guestbook", guestbook);
        return "returnGuestbook";
    }
/**
　　* @Description: 回复留言的修改
　　* @param ${tags}
　　* @return ${return_type}
　　* @throws
　　* @author 马楠
　　* @date 2018/5/14 11:07
　　*/
    @RequestMapping("updateGuestbookB")
    @ResponseBody
    public String updateGuestbookB(Guestbook guestbook){
        String nowtime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        guestbook.setGreturnTime(nowtime);
        guestbook.setGlastUpdTime(nowtime);
        guestbook.setGstatus(1);
        guestbookService.updateGuestbook(guestbook);
        return "success";
    }



}
