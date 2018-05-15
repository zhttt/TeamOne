<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<html>
<head>
    <title>登录</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <script src="<%=request.getContextPath()%>/js/login/jquery.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/js/login/autoplay.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/js/login/jquery.validate.js"></script>

    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="head">
    <div class="logo fl"><img src="image/logo.png"></div>
    <div class="nav fl">
        <ul class="font16">
            <li><a href="index.html">首页</a></li>
            <li class="mline m1"></li>
            <li><a href="#">逛街</a></li>
            <li class="mline m1"></li>
            <li><a href="#">9.9抢购</a></li>
            <li class="mline m1"></li>
            <li><a href="#">20元封顶</a></li>
            <li class="mline m1"></li>
            <li><a href="theme.html">主题购</a></li>
            <li class="mline m1"></li>
            <li><a href="applyfree.html">免费申领</a></li>
        </ul>
    </div>
    <div class="clear"></div>
</div>
<div class="container">
    <div class="content">
        <div id="scrollbox" class="fl">
            <ul>
                <li><img src="<%=request.getContextPath()%>/image/banner/scroll1.png"/></li>
                <li><img src="<%=request.getContextPath()%>/image/banner/scroll2.png"/></li>
                <li><img src="<%=request.getContextPath()%>/image/banner/scrsoll3.png"/></li>
                <li><img src="<%=request.getContextPath()%>/image/banner/scroll3.png"/></li>
            </ul>
            <ol class="dot">
                <li class="curdot"></li>
                <li></li>
                <li></li>
                <li></li>

            </ol>
        </div>
        <div class="loginbox fr">
            <ul class="hd font18 clear"><li class="w241 login cur" >账户登录</li><li class="w241 register">免费注册</li></ul>
            <div class="clear"></div>
            <div class="bd">
                <form id="login">
                    <div  class="username tbox mb8">
                        <label ></label>
                        <input type="text" class="logtext" value="Admin" onFocus="if (this.value==this.defaultValue) this.value='';" onblur="if (this.value=='') this.value=this.defaultValue;">
                    </div>
                    <div  class="pwd tbox">
                        <label ></label>
                        <input type="text" class="logtext" value="密码" onFocus="if (this.value==this.defaultValue) this.value='';" onblur="if (this.value=='') this.value=this.defaultValue;">
                    </div>
                    <div class="auto-login">
                        <span class="autol fl"><input type="checkbox" id="autoch"><label for="autoch">&nbsp;两周内自动登录</label> </span><a href="">找回密码?</a>
                    </div>
                    <input type="submit" class="" value="登录">
                    <div class="linebox">
                        <div class=" linewrap fl"><div class="line"></div><div class="line"></div></div>
                        <div class="fl">合作网站</div>
                        <div class="linewrap fl"><div class="line"></div><div class="line"></div></div>
                        <div class="clear"></div>
                    </div>
                    <ul class="partner">
                        <li><a href=""><i class="pq"></i>QQ账号</a></li>
                        <li><a href=""><i class="px"></i>新浪微博</a></li>
                        <li><a href=""><i class="pw"></i>微信</a></li>
                        <li><a href=""><i class="pm"></i>蘑菇街</a></li>
                        <div class="clear"></div>
                    </ul>
                </form>
                <form id="register">
                    <dl>
                        <dt for="username">用户名：</dt>
                        <dd><input type="text"  name="username" id="username"></dd>
                    </dl>
                    <dl class="">
                        <dt for="password">设置密码：</dt>
                        <dd><input type="password"  name="password" id="password" ></dd>
                    </dl>
                    <dl class="">
                        <dt for="confirm_password">确认密码：</dt>
                        <dd><input type="password" value="" id="confirm_password" name="confirm_password"></dd>
                    </dl>
                    <dl class="">
                        <dt for="email">邮箱：</dt>
                        <dd><input vtype="email" value="" id="email" name="email" ></dd>
                    </dl>
                    <dl class="">
                        <dt >验证码：</dt>
                        <dd><input type="text" value="" style="width:150px"></dd>
                    </dl>
                    <input type="submit" value="注册" >
                </form>
            </div>
        </div>
        <div class="clear"></div>
    </div>

</div>
<div class="footer">
    <div class="footbox">
        <div class="about">
            <div class="font16 abtitle">关于我们</div>
            <ul class="gray">
                <li>爱打折简介</li>
                <li>联系我们</li>
                <li>加入我们</li>
            </ul>
        </div>
        <div class="cooper">
            <div class="font16 abtitle">关于我们</div>
            <ul class="gray">
                <li>爱打折简介</li>
                <li>联系我们</li>
                <li>加入我们</li>
            </ul>
        </div>
        <div class="weixin">
            <div class="wxlogo"><img src="image/logo.png"></div>
            <div class="wxpic"></div>
        </div>
        <div class="cooper" style="border-right:1px dotted #CCC;">
            <div class="font16 abtitle">商务合作</div>
            <ul class="gray">
                <li>爱打折简介</li>
                <li>联系我们</li>
                <li>加入我们</li>
            </ul>
        </div>
        <div class="about" style="border:none;">
            <div class="font16 abtitle">帮助中心</div>
            <ul class="gray">
                <li>爱打折简介</li>
                <li>加入我们</li>
                <li>联系我们</li>

            </ul>
        </div>
    </div><!--footbox end-->

    <div class="copyright gray">Copyright © 2013 Phoenix New Media Limited All Rights Reserved.</div>
</div>
<script type="text/javascript">
    //登录注册页面切换
    $(function(){
        $("#register").hide();
        $(".hd li").click(function(){
            $(this).addClass("cur").siblings().removeClass("cur");
            $(".bd form").hide().eq($(this).index()).show();
        });

    });
    //验证信息
    $.validator.setDefaults({
        submitHandler: function() {
            window.location.href = "member.html";
        }
    });
    $().ready(function() {
        // validate signup form on keyup and submit
        $("#register").validate({
            rules: {
                username: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                username: {
                    required: "请输入用户名",
                    minlength: "您的用户名必须包含至少2个字符"
                },
                password: {
                    required: "请输入密码",
                    minlength: "密码必须大于5个字符"
                },
                confirm_password: {
                    required: "请输入确认密码",
                    minlength: "密码必须大于5个字符",
                    equalTo: "两次输入的密码要一致"
                },
                email: "请输入正确的邮箱格式"
            }
        });
    });
</script>
</body>
</html>