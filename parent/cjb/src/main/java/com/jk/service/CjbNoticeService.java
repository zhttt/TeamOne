package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.bean.cjb.CjbNotice;

public interface CjbNoticeService {
    JSONObject querynotice();

    void addnotice(CjbNotice notice);

    void deletenotice(Integer id);

    CjbNotice querytableid(Integer id);

    void updatetable(CjbNotice notice);
}
