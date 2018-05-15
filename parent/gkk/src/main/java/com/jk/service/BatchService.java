package com.jk.service;


import com.jk.bean.gkk.Batch;

import java.util.List;

/**
 * Created by GKB on 2018/5/11.
 * 查询批次
 */
public interface BatchService {

    List selectBatch();

    void addBatch(Batch batch);

    void deleteBatch(Integer id);

    void updateBatch(Batch batch);
}
