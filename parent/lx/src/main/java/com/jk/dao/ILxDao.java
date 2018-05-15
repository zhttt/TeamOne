package com.jk.dao;

import com.jk.bean.lx.Echarts;
import com.jk.bean.lx.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ILxDao {

    List<Echarts> echarts();



    List<User> selectUSerCount(@Param("username") String username, @Param("password") String password);

    void updateuser(@Param("password")String password, @Param("uname")Integer uname);
}
