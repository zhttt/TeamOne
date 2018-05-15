package com.jk.service;

import com.jk.bean.mn.Guestbook;

import java.util.Map;

public interface GuestbookService {

    Map queryGuestbook(Integer page, Integer rows, Guestbook guestbook);

    Integer deleteGuestbook(String ids);

    Guestbook queryGuestById(Integer gid);

    void updateGuestbook(Guestbook guestbook);
}
