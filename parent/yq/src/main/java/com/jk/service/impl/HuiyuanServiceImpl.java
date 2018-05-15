package com.jk.service.impl;

import com.jk.dao.HuiyuanDao;
import com.jk.service.HuiyuanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: 杨强
 * @Date: 2018/5/15 17:32
 * @Description:
 */
@Service
public class HuiyuanServiceImpl implements HuiyuanService {
    @Autowired
    private HuiyuanDao huiyuanDao;

    public List queryshop(String name) {

        return huiyuanDao.queryshop(name);
    }
}
