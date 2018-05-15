package com.jk.controller.ht;

import com.alibaba.fastjson.JSON;
import com.jk.bean.ht.Tree;
import com.jk.bean.ht.User;
import com.jk.bean.ht.Role;
import com.jk.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/UserController")
public class UserController {

    @Resource
    private IUserService userService;

/**
 *
 * 功能描述:
 *
 * @param: 查询树
 * @return:
 * @auther: Hunter
 * @date: 2018/5/14 11:18
 */
    @RequestMapping("getTree")
    @ResponseBody
    public List<Map<String,Object>> getTree( HttpServletRequest request){

        User user=(User) request.getSession().getAttribute("user");

         List<Tree> list = userService.getTree(user.getId());
        return treeStr(list, 0);
    }
    public List<Map<String,Object>> treeStr(List<Tree> list, Integer pid){

        //定义返回变量
        List<Map<String,Object>> newlist = new ArrayList<Map<String,Object>>();
        //循环所有数据
        for (int i = 0; i < list.size(); i++) {
            //定义以个map集合  用来存放 单个节点数据
            Map<String,Object> map = null;
            //获取单个对象数据
            Tree m = list.get(i);
            //判断当前节点是否存在父节点
            if(m.getPid().equals(pid)){
                map = new HashMap<String, Object>();
                map.put("id", m.getId());
                map.put("text", m.getText());
                map.put("url", m.getUrl());
                map.put("icon", m.getIcon());
                map.put("children",treeStr(list,m.getId()));
            }
            if(map!=null){
                //获取子节点数据
                List<Map<String,Object>>  l = (List<Map<String,Object>>)map.get("children");
                //如果没有子节点数据 移除 nodes
                if(l.size() == 0){
                    map.remove("children");
                }
                newlist.add(map);
            }
        }

        return newlist;
    }

    /**
     * 登录
     * @param username
     * @param password
     * @param request
     * @return
     */
    @RequestMapping("queryuser")
    @ResponseBody
    public String  queryuser(String username, String password, HttpServletRequest request) {
        String code = (String)request.getSession().getAttribute("rand");
        String loginFlag = "";//扩大作用域
        loginFlag = userService.queryuser(username,password,request);

        return loginFlag;

    }

/**
 *
 * 功能描述:
 *
 * @param: 查询用户
 * @return:
 * @auther: Hunter
 * @date: 2018/5/13 17:49
 */
    @RequestMapping("/queryUser")
    @ResponseBody
    public List<User>  queryUser(){
        //Map<String,Object> map = new HashMap<String, Object>();

        List<User> list = userService.queryUser();
        System.out.println(list);

        return list;
    }

    /**
     *
     * 功能描述:
     *
     * @param: 新增用户
     * @return:
     * @auther: Hunter
     * @date: 2018/5/13 17:49
     */
    @RequestMapping("/addUser")
    @ResponseBody
    public String addUser(User user ){

        Integer count = userService.addUser(user);
        if(count !=0){
            return "Success";
        }
            return "fail";
    }
    /**
     *
     * 功能描述:
     *
     * @param: 批删
     * @return:
     * @auther: Hunter
     * @date: 2018/5/13 18:02
     */
    @RequestMapping("deleteUsers")
    @ResponseBody
    public String deleteUsers(String ids){
        userService.deleteUsers(ids);
        return "Success";
    }

    /**
     *
     * 功能描述:
     *
     * @param: 单删
     * @return:
     * @auther: Hunter
     * @date: 2018/5/13 18:15
     */
    @RequestMapping("deleteUserById")
    @ResponseBody
   public String deleteUserById(Integer id){

       userService.deleteUserById(id);
       return "Success";
   }

   /**
    *
    * 功能描述:
    *
    * @param: 修改之查询
    * @return:
    * @auther: Hunter
    * @date: 2018/5/13 18:20
    */
        @RequestMapping("/queryUserById")
      public String queryUserById(Integer id, Model model){
            User user =userService.queryUserById(id);
            model.addAttribute("user",user);
            return "addUser";
        }

        /**
         *
         * 功能描述:
         *
         * @param: 修改之保存
         * @return:
         * @auther: Hunter
         * @date: 2018/5/13 18:33
         */
        @RequestMapping("/updateUser")
        @ResponseBody
        public String updateUser(User user){
            userService.updateUser(user);
            return "Success";
        }

        /**
         *
         * 功能描述:
         *
         * @param: 查询所有用户角色
         * @return:
         * @auther: Hunter
         * @date: 2018/5/14 11:55
         */
        @RequestMapping("/queryUserRole")
        @ResponseBody
       private String  queryUserRole(HttpServletRequest request){

            List<User> list =userService.queryUserRole();
            return JSON.toJSONString(list);
        }

    /**
     * 修改角色的查询角色回显
     * @param
     * @param
     * @return
     */
    @RequestMapping("/queryRole")
    public ModelAndView queryRole(Integer id ){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Role");
        mav.addObject("id",id);
        mav.addObject("role",userService.queryRole());
        mav.addObject("rolee",userService.queryRolee(id));
        return mav;
    }

    /**
     * 修改角色
     * @param uid
     * @param
     * * @return
     */
    @RequestMapping("/updateRole")
    @ResponseBody
    public String updateRole(@RequestParam(value = "uid") Integer uid,@RequestParam(value="r_id") Integer[] r_id){
        System.out.println("r_id="+r_id.toString());
             userService.updateRole(uid,r_id);
        return "success";
    }

 /**
  *
  * 功能描述:
  *
  * @param: 查询角色
  * @return:
  * @auther: Hunter
  * @date: 2018/5/14 21:10
  */
    @RequestMapping("/queryAllRole")
    @ResponseBody
    public String queryRole(){
       List<Role> list = userService.queryRole();

        return JSON.toJSONString(list);
    }
/**
 *
 * 功能描述: 
 *
 * @param: 将角色ID带到分配权限页面
 * @return: 
 * @auther: Hunter
 * @date: 2018/5/14 22:13
 */
    @RequestMapping("/queryPower")
    @ResponseBody
    public ModelAndView queryPower(Integer id){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Power");
        mav.addObject("roleId",id);
        return mav;
    }
/**
 *
 * 功能描述:
 *
 * @param: 根据角色Id回显权限
 * @return:
 * @auther: Hunter
 * @date: 2018/5/14 22:35
 */
    @RequestMapping("/queryTreeByIds")
    @ResponseBody
    public String queryTreeByIds(Integer roleId){

        List<Tree> list = userService.queryTreeByIds(roleId);
        return JSON.toJSONString(list);
    }
/**
 *
 * 功能描述:
 *
 * @param: 修改权限
 * @return:
 * @auther: Hunter
 * @date: 2018/5/14 22:47
 */
    @RequestMapping("/updatePower")
    @ResponseBody
    public String updatePower(String ids,Integer idd){
        userService.updatePower(ids,idd);
        return "success";
    }
    /**
     *
     * 功能描述:
     *
     * @param: 查询树
     * @return:
     * @auther: Hunter
     * @date: 2018/5/14 22:47
     */
    @RequestMapping("/queryTree")
    @ResponseBody
    public List<Map<String,Object>> queryTree(){
        List<Tree> list =userService.queryTree();
        return treeStr(list, 0);
    }
}
