package com.jk.dao;

import com.jk.bean.cjb.CjbNotice;

import java.util.List;

public interface CjbNoticeDao {
    List querynotice();

    void addnotice(CjbNotice notice);

    void deletenotice(Integer id);

    CjbNotice querytableid(Integer id);

    void updatetable(CjbNotice notice);
}
