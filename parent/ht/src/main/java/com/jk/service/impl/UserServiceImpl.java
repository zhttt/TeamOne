package com.jk.service.impl;

import com.jk.bean.ht.Role;
import com.jk.bean.ht.Tree;
import com.jk.bean.ht.User;
import com.jk.dao.IUserDao;
import com.jk.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements IUserService {

    @Resource
    private IUserDao userDao;

    @Override
    public List getTree(Integer id) {

        return userDao.getTree(id);
    }

    @Override
    public List queryUser() {
        return userDao.queryUser();
    }

    @Override
    public Integer addUser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public Integer deleteUsers(String ids) {
        String[] idstr=ids.split(",");
        List<String> list=new ArrayList<String>();
        for (String id : idstr) {
            list.add(id);
        }

        return userDao.deleteUsers(list);
    }

    @Override
    public void deleteUserById(Integer id) {
        userDao.deleteUserById(id);
    }

    @Override
    public User queryUserById(Integer id) {
        return userDao.queryUserById(id);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public String queryuser(String username, String password, HttpServletRequest request) {
        List<User> list = userDao.selectUSerCount(username,password);
        if(list.size() == 1){
            request.getSession().setAttribute("user", list.get(0));
            return "loginSuccess";
        }
        return "loginFail";
    }

    @Override
    public List<User> queryUserRole() {
        return userDao.queryUserRole();
    }

    @Override
    public List<Role> queryRole() {
        return userDao.queryRole();
    }

    @Override
    public List<Role> queryRolee(Integer id) {
        return userDao.queryRolee(id);
    }

    @Override
    public void updateRole(Integer uid, Integer[] r_id) {

           userDao.deleteRole(uid);
        userDao.updateRole(uid,r_id);
    }

    @Override
    public List<Tree> queryTreeByIds(Integer roleId) {
        return userDao.queryTreeByIds(roleId);
    }

    @Override
    public void updatePower(String ids, Integer roleId) {
        userDao.deleteTreeRoleRealtion(roleId);

        String[] idss=ids.split(",");

        List<Map<String,Object>> maps =new ArrayList<Map<String,Object>>();

        if(roleId!=null){

            for (int i = 0; i < idss.length; i++) {

                Map<String,Object> map =new HashMap<String,Object>();
                map.put("roleId", roleId);
                map.put("prId", idss[i].trim());
                maps.add(map);


            }
            userDao.addTreeRoleRelation(maps);

        }
    }

    @Override
    public List<Tree> queryTree() {
        return userDao.queryTree();
    }

}
