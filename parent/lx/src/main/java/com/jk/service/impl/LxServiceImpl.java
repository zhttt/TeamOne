package com.jk.service.impl;

import com.jk.bean.lx.Echarts;
import com.jk.bean.lx.User;
import com.jk.dao.ILxDao;
import com.jk.service.LxService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Service
public class LxServiceImpl implements LxService {

    @Resource
    private ILxDao lxdao;

    public String queryuser(String username, String password, HttpServletRequest request) {
        List<User>list = lxdao.selectUSerCount(username,password);
        if(list.size()==1){
            request.getSession().setAttribute("user", list.get(0));
            return "loginSuccess";
        }
        return "loginFail";
    }

    public List<Echarts> echarts() {
        List<Echarts> list =   lxdao.echarts();
        Double sum =0.00;   //总和

        for (Echarts echarts:list) {
            sum += echarts.getY();
        }

        for (Echarts echarts:list) {
            echarts.setY(echarts.getY()/sum);
        }
        //System.out.println(1);
       /*List<Echarts>  newlist = new ArrayList<Echarts>();
       double sum =0;
    //    List as = lxdao.echarts();
        System.out.println(1);
        List<Echarts> list =   lxdao.echarts();
        System.out.println(1);
        for (int i = 0; i < list.size(); i++) {

            //Object[] ob = (Object[]) list.get(i);
            Echarts ec = new Echarts();
            //ec.setId(Integer.parseInt(ob[0]));
            //ec.setId((Integer) (ob[0]));
           // System.out.println(ob[1]);
           // ec.setName((String) ob[1]);

            // ec.setY(Double.parseDouble(ob[2]));
            //ec.setY((Double)ob[2]);
            //sum=sum+((Double)ob[2]);
            //sum=sum+Double.parseDouble(ob[2]);
            newlist.add(ec);
        }*/
        /* Integer sum = 0;
        for (Object [] obj:list) {
            sum += Integer.parseInt(obj[2].toString());
        }
        for (Object [] obj:list) {
          Echarts.setEachart(obj[0],obj[1],obj[2],sum);
        }


        Echarts ec = new Echarts();
        for (Echarts echarts : list) {
            ec.setId(echarts.getId());
            ec.setName(echarts.getName());
            ec.setY(echarts.getY());
            sum = sum +echarts.getY();
            newlist.add(ec);
        }*/

       /* for (Echarts echarts : newlist) {
            echarts.setY(echarts.getY()/sum*100);
        }*/

        return list;
    }



    public void updateuser(Integer uname,String password) {
        lxdao.updateuser(password,uname);
    }




}