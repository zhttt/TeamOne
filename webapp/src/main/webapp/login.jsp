<%--
  Created by IntelliJ IDEA.
  User: qW
  Date: 2018/5/9
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/artDialog-master/dist/dialog-plus.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/demo.css"/>
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/component.css" />


    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/js.js"></script>
</head>

<body>
<div class="div"></div>
<canvas id="stars"></canvas>
<div class="logo_box">
    <form id="loginid" >
        <div class="input_outer">
            <span class="u_user"></span>
            <input name="logname" class="text" style="color: #FFFFFF !important" type="text"  name="username" id="username"   placeholder="请输入账户" >
        </div>
        <div class="input_outer">
            <span class="us_uer"></span>
            <input name="logpass" class="text"  name="password" id="password" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
        </div>
        <span id="mmpyi2"></span>
        <div class="mb2"><a class="act-but submit" href="javascript:;" style="color: #FFFFFF"  onclick="denglu()">登录</a></div>
    </form>

</div>




<script type="text/javascript">
    function F5(obj){
        obj.src="<%=request.getContextPath()%>/authImage?"+Math.random();
    }


    function denglu(){

        var names = $("#username").val();
        var pass = $("#password").val();
            $.ajax({
                url:"<%=request.getContextPath()%>/LxController/queryuser",
                type:"post",
                data:{"username":names,"password":pass},
                dataType:'text',
                async:false,
                success:function (loginFlag){
                    if(loginFlag == "loginSuccess"){
                        alert("登录成功");
                        location.href="<%=request.getContextPath()%>/index.jsp";
                    }else{
                        $("#mmpyi2").html("<font size='5' color='ff2121'>账号或密码错误！！</font>");
                    }
                },
                error:function(){
                }
            })


    }


</script>
</body>
</html>