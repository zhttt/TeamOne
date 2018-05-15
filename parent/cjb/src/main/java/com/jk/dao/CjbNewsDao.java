package com.jk.dao;

import com.jk.bean.cjb.CjbNews;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CjbNewsDao{

    List querynews();

    void addnews(CjbNews news);

    void deletenews(Integer id);

    CjbNews querytableid(Integer id);

    void updatetable(CjbNews news);
}
