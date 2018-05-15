package com.jk.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.bean.cjb.CjbNews;
import com.jk.dao.CjbNewsDao;
import com.jk.service.CjbNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class CjbNewsServiceImpl implements CjbNewsService {
    @Autowired
    private CjbNewsDao cjbNewsDao;

    public JSONObject querynews() {

        List seriess = cjbNewsDao.querynews();
        JSONObject json = new JSONObject();
        json.put("rows", seriess);
        return json;
    }

    public void addnews(CjbNews news) {
        Date day=new Date();

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        news.setNewstime(df.format(day));

        cjbNewsDao.addnews(news);

    }

    public void deletenews(Integer id) {
        cjbNewsDao.deletenews(id);
    }

    public CjbNews querytableid(Integer id) {
        return cjbNewsDao.querytableid(id);
    }

    public void updatetable(CjbNews news) {
        Date day=new Date();

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        news.setNewstime(df.format(day));
        cjbNewsDao.updatetable(news);
    }


}
