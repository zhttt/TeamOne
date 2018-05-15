package com.jk.service;

import com.jk.bean.lx.Echarts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface LxService {
    String queryuser(String username, String password, HttpServletRequest request);

    List<Echarts> echarts();




    void updateuser(Integer uname, String password);
}
