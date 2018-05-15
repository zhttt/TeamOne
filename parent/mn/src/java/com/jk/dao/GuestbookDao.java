package com.jk.dao;

import com.jk.bean.mn.Guestbook;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GuestbookDao {
    List queryGuestbook(@Param("page")Integer page, @Param("rows")Integer rows, @Param("guestbook")Guestbook guestbook);

    Integer queryTotal(@Param("guestbook")Guestbook guestbook);

    Integer deleteGuestbook(List list);

    Guestbook queryGuestById(@Param("gid")Integer gid);

    void updateGuestbook(@Param("guestbook")Guestbook guestbook);
}
