package com.jk.service;


import java.util.List;

import com.jk.bean.ht.Role;
import com.jk.bean.ht.Tree;
import com.jk.bean.ht.User;

import javax.servlet.http.HttpServletRequest;

public interface IUserService {
    List getTree(Integer id);

    List queryUser();

    Integer addUser(User user);

    Integer deleteUsers(String ids);

    void deleteUserById(Integer id);

    User queryUserById(Integer id);

    void updateUser(User user);

    String queryuser(String username, String password, HttpServletRequest request);

    List<User> queryUserRole();

    List<Role> queryRole();

    List<Role> queryRolee(Integer id);

    void updateRole(Integer uid, Integer[] r_id);

    List<Tree> queryTreeByIds(Integer roleId);

    void updatePower(String ids, Integer idd);

    List<Tree> queryTree();
}
