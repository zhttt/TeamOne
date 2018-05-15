package com.jk.dao;

import com.jk.bean.ht.Role;
import com.jk.bean.ht.Tree;
import com.jk.bean.ht.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IUserDao {

    List getTree(Integer id);

    List queryUser();

    Integer addUser(User user);

    Integer deleteUsers(List<String> iss);

    void deleteUserById(Integer id);

    User queryUserById(Integer id);

    void updateUser(User user);

    List<User> selectUSerCount(@Param("username") String username, @Param("password") String password);

    List<User> queryUserRole();

    List<Role> queryRole();

    List<Role> queryRolee(Integer id);

    void updateRole(@Param(value = "uid") Integer uid, @Param(value="r_id") Integer[] r_id);

    void deleteRole(Integer uid);

    List<Tree> queryTreeByIds(Integer roleId);

    void deleteTreeRoleRealtion(Integer roleId);

    void addTreeRoleRelation(List<Map<String, Object>> maps);

    List<Tree> queryTree();
}
