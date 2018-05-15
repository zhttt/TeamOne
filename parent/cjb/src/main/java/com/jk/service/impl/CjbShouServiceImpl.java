package com.jk.service.impl;

import com.jk.bean.cjb.CjbDA;
import com.jk.dao.CjbShouDao;
import com.jk.service.CjbShouService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CjbShouServiceImpl implements CjbShouService {
    @Autowired
    private CjbShouDao cjbShouDao;

    public List<CjbDA> queryshou() {
        return cjbShouDao.queryshou();
    }
}
