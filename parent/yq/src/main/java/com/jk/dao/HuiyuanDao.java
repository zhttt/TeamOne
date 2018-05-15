package com.jk.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther: 杨强
 * @Date: 2018/5/15 17:38
 * @Description:
 */
public interface HuiyuanDao {
    List queryshop(@Param("name") String name);
}
