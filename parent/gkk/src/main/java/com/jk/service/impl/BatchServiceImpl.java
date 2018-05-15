package com.jk.service.impl;


import com.jk.bean.gkk.Batch;
import com.jk.dao.BatchDao;
import com.jk.service.BatchService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by GKB on 2018/5/11.
 */
@Service
public class BatchServiceImpl implements BatchService {

    @Resource
    private BatchDao batchDao;

    //查询批次
    public List selectBatch() {
        return batchDao.selectBatch();
    }

    //新增批次
    public void addBatch(Batch batch) {
        batchDao.addBatch(batch);
    }

    //删除批次
    public void deleteBatch(Integer id) {
        batchDao.deleteBatch(id);
    }

    //修改批次
    public void updateBatch(Batch batch) {
        batchDao.updateBatch(batch);
    }

}
