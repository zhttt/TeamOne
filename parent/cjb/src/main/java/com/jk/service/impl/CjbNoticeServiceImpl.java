package com.jk.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.bean.cjb.CjbNotice;
import com.jk.dao.CjbNewsDao;
import com.jk.dao.CjbNoticeDao;
import com.jk.service.CjbNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class CjbNoticeServiceImpl implements CjbNoticeService {

    @Autowired
    private CjbNoticeDao cjbNoticeDao;

    public JSONObject querynotice() {
        List seriess = cjbNoticeDao.querynotice();
        JSONObject json = new JSONObject();
        json.put("rows", seriess);
        return json;
    }

    public void addnotice(CjbNotice notice) {
        Date day=new Date();

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        notice.setNoticedate(df.format(day));

        cjbNoticeDao.addnotice(notice);
    }

    public void deletenotice(Integer id) {
        cjbNoticeDao.deletenotice(id);
    }

    public CjbNotice querytableid(Integer id) {
        return cjbNoticeDao.querytableid(id);
    }

    public void updatetable(CjbNotice notice) {
        Date day=new Date();

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        notice.setNoticedate(df.format(day));
        cjbNoticeDao.updatetable(notice);
    }
}
