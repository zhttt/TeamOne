package com.jk.controller.wb;


import com.jk.bean.wb.Label;
import com.jk.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("LabelController")
public class LabelController {

    @Autowired
    private LabelService labelService;


    /**
     * 功能描述: 标签查询+分页
     * @param: [page, rows]
     * @return: java.util.Map<java.lang.String,java.lang.Object>
     * @auther: 王博
     * @date: 2018/5/13 19:07
     */
    @RequestMapping("queryLabel")
    @ResponseBody
    public Map<String,Object> getquanjiawb(Integer page, Integer rows){
        Map<String,Object> map = new HashMap<String, Object>();
        List<Label> list = labelService.getLabelByWhere();
        List<Label> list1 = labelService.getLabelByPage(page,rows);
        map.put("total", list.size());
        map.put("rows", list1);
        return map;
    }

    /**
     * 功能描述: 修改，新增 同一弹框
     * @param: [id]
     * @return: java.lang.String
     * @auther: 王博
     * @date: 2018/5/10 17:48
     */
    @RequestMapping("toAddbiao")
    public ModelAndView toAddbiao(Integer id){
        ModelAndView mav = new ModelAndView("addbiao");
        if(id!=null){
            Label label=labelService.getLabel(id);
            mav.addObject("label",label);
        }
        return mav;
    }

    /**
     * 功能描述: 新增，修改  同一方法
     * @param: [lade]
     * @return: void
     * @auther: 王博
     * @date: 2018/5/10 20:14
     */
    @RequestMapping("addbiaoqian")
    @ResponseBody
    public Map<String, Object> addbiaoqian(Label labe){
        Map<String, Object> map = new HashMap<String, Object>();

        if(labe.getLid()==null){
            labelService.addbiaoqian(labe);
            try {
                map.put("success", true);
                map.put("msg", "新增成功");
            } catch (Exception e) {
                e.printStackTrace();
                map.put("success", false);
                map.put("msg","新增失败");
            }
        }else {
            labelService.updatebiaoqian(labe);
            try {
                map.put("success", true);
                map.put("msg", "修改成功");
            } catch (Exception e) {
                e.printStackTrace();
                map.put("success", false);
                map.put("msg", "修改失败");
            }
        }
            return map;

    }

    /**
     * 功能描述: 删除标签
     * @param: [ids]
     * @return: java.util.Map<java.lang.String,java.lang.Object>
     * @auther: 王博
     * @date: 2018/5/13 19:35
     */
    @RequestMapping("deletebiaoqian")
    @ResponseBody
    public Map<String, Object> deletebiaoqian(String ids){

        System.out.println(ids);
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            labelService.deletebiaoqian(ids);
            map.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success", false);
        }

        return map;

    }




}
