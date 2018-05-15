package com.jk.service.impl;

import com.jk.bean.mn.Guestbook;
import com.jk.dao.GuestbookDao;
import com.jk.service.GuestbookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class GuestbookServiceImpl implements GuestbookService {
    @Resource
    private GuestbookDao guestbookDao;
    public Map queryGuestbook(Integer page, Integer rows, Guestbook guestbook) {
        Integer total=guestbookDao.queryTotal(guestbook);
        page =(page-1) * rows;
        List list=guestbookDao.queryGuestbook(page,rows,guestbook);
        Map map=new HashMap();
        map.put("total",total);
        map.put("rows", list);
        return map;
    }

    public Integer deleteGuestbook(String ids) {
        String[] str=ids.split(",");
        List list=new ArrayList();
        for (String id:str) {
            list.add(id);
        }
        return  guestbookDao.deleteGuestbook(list);
    }

    public Guestbook queryGuestById(Integer gid) {

        return guestbookDao.queryGuestById(gid);
    }

    public void updateGuestbook(Guestbook guestbook) {
        guestbookDao.updateGuestbook(guestbook);
    }
}
