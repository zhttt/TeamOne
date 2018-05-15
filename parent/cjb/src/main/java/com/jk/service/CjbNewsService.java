package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.bean.cjb.CjbNews;

public interface CjbNewsService {


    JSONObject querynews();

    void addnews(CjbNews news);

    void deletenews(Integer id);


    CjbNews querytableid(Integer id);

    void updatetable(CjbNews news);
}