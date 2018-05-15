package com.jk.dao;


import com.jk.bean.gkk.Batch;

import java.util.List;

/**
 * Created by GKB on 2018/5/11.
 */
public interface BatchDao {

    List selectBatch();

    void addBatch(Batch batch);

    void deleteBatch(Integer id);

    void updateBatch(Batch batch);
}
