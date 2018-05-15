package com.jk.controller.gkk;


import com.jk.bean.gkk.Batch;
import com.jk.service.BatchService;
import org.activiti.engine.impl.transformer.IntegerToLong;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;


/**
 * Created by GKB on 2018/5/11.
 */

@Controller
@RequestMapping("/batchAction")
public class BatchController {

    @Resource
    private BatchService batchService;

    /**
     *查询批次
     */
    @RequestMapping("selectBatch")
    @ResponseBody
    public List<Batch> selectBatch(){
        List list =  batchService.selectBatch();
       return list;
    }

   /**
     * 新增批次
     */
    @RequestMapping("addBatch")
    @ResponseBody
    public void addBatch(Batch batch){
        batchService.addBatch(batch);
    }


    /**
     * 新增跳转页面
     */
    @RequestMapping("toaddBatch")
    public String toaddBatch(){
        return "batch/addBatch";
    }

    /**
     * 删除批次
     */
    @RequestMapping("deleteBatch")
    @ResponseBody
    public void deleteBatch(Integer ids){
       batchService.deleteBatch(ids);
    }

    /**
     * 修改跳转页面
     */
    @RequestMapping("toupdateBatch")
    public String toupdateBatch(){
        return "batch/updateBatch";
    }

    /**
     * 修改批次
     * */
    @RequestMapping("updateBatch")
    @ResponseBody
    public void updateBatch(Batch batch){
        batchService.updateBatch(batch);
    }


}

