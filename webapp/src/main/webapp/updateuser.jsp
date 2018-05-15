<%--
  Created by IntelliJ IDEA.
  User: qW
  Date: 2018/5/14
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/artDialog-master/dist/dialog-plus.js"></script>
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/component.css" />


</head>
<body>

    <form id="fromid" >
        <center>
        <table>
             <tr>
                 <td>账号</td>
                 <td>    <input  type="text" value="${uname}" name="username" id="username" disabled="disabled"></td>
             </tr>

             <tr>
                 <td>密码</td>
                 <td><input  id="password"  name="password" type="password" ></td>
             </tr>

             <tr>
                 <td>确认密码</td>
                 <td>  <input  id="passwordid"  type="password" onblur="textpasww()"></td>
             </tr>
            <tr>
                <td> <input type="button" value="修改" onclick="xiugai()"/></td>
            </tr>

        </table></center>

    </form>



<script type="text/javascript">
    function textpasww(){

        var pwd = $("#password").val();

        var cpwd = $("#passwordid").val();
        if(pwd != cpwd){
            alert("两次密码不一致!");
            $("#passwordid").val("");
            $("#password").val("");
            return false;
        }else{
            return true;
        }
    }


    function xiugai() {
        textpasww();
        var pass = $("#password").val();
        alert(pass);
        $.ajax({
            url:"<%=request.getContextPath()%>/LxController/updateusr",
            type:"post",
            data:{"password":pass},
            dataType:'text',
            async:false,
            success:function (loginFlag){
                if(loginFlag == "loginSuccess"){
                    alert("修改成功");
                    location.href="<%=request.getContextPath()%>/login.jsp";
                }
            },
            error:function(){
            }
        })
    }
</script>
</body>
</html>
