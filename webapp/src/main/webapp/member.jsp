<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>会员中心</title>
<meta name="description" content="">
<meta name="keywords" content="">
<<<<<<< HEAD
=======
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.js"></script>
>>>>>>> origin/master
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/member.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<div class="header">
	<div class="topbar">
    	<span><a href="#">QQ登录</a></span><span><a href="#">微博登陆</a></span>&nbsp;<span class="hr-line">|</span>
        <span class="item"><a href="#">登录</a></span><span class="item"><a href="#">注册</a></span>&nbsp;<span class="hr-line">|</span>
        <span class="orange"><a href="#">积分签到</a></span>
    </div>
    <div class="headbox">
    	<div class="logo"><img src="image/logo.png" /></div>
        <div class="searchbox">
        	<div class="tips-num gray">今日更新&nbsp;<span class="green">298</span>&nbsp;款</div>
            <form id="submitform">
                <input id="searchText" type="text" class="text gray" value='今秋"时尚"看我的，国庆出门美美的'  onFocus="if (this.value==this.defaultValue) this.value='';" onblur="if (this.value=='') this.value=this.defaultValue;"/>
                <input id="searchSubmit" type="submit" value=""/>
        	</form>
            
            <div class="tipswrap">
            	<div class="tipsbox">
                	<a href="#" />
                    	<img src="image/tips-icon1.jpg" /></br>
                        <span class="gray">看过</span>
                    </a>
                </div>
                <span class="gray">|</span>
            	<div class="tipsbox">
                	<a href="#" />
                    	<img src="image/tips-icon2.jpg" /></br>
                        <span class="gray">收藏</span>
                    </a>
                </div>
            </div><!--tipswrap end--><div class="clear"></div>
        </div><!--searchbox end-->
    </div><!--headbox end-->
    <div class="nav">
    	<ul>
        	<li class="font16"><a href="#">首页</a></li>
        	<li class="mline m9m30"></li>
        	<li class="font16"><a href="#">逛街</a></li>
        	<li class="mline m9m30"></li>
        	<li class="font16"><a href="#">9.9抢购</a></li>
        	<li class="mline m9m30"></li>
        	<li class="font16"><a href="#">20元封顶</a></li>
        	<li class="mline m9m30"></li>
        	<li class="font16"><a href="#">主题购</a></li>
        	<li class="mline m9m30"></li>
        	<li class="font16"><a href="#">免费申领</a></li>
        </ul>
    </div>
</div><!--head end-->

<div class="banner-wrap">
	<div class="banner">
		<div class="userface fl"><img src="image/member/userface.png"></div>
		<div class="userinfo fl">
<<<<<<< HEAD
			<div><h2>honey娟</h2><a href="#"/>设置</a></div>
=======
			<div><h2>honey娟</h2><a href="#">设置 </a> </div>
>>>>>>> origin/master
			<div class="font14 grayer">
				<span>女</span><span class="mline m0m15"></span>
				<span>天蝎座</span><span class="mline m0m15"></span><span>四川-成都</span>
			</div>
			<p class="tabtext grayer pt35">People don't leave because things are hard. People do leave because it's no longer worth it.</p>
		</div>
		<div class="useratten fl">
			<ul class="clear">
				<li>
					<a href="#">
						<strong class="grayer">600</strong><span>积分</span>
					</a>
				</li>
				<li>
					<a href="#">
						<strong class="orange">1128</strong><span>粉丝</span>
					</a>
				</li>
				<li style="border:none">
					<a href="#">
						<strong class="grayer">600</strong><span>关注</span>
					</a>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</div><!--banner-wrap end --> 
<div class="container pb">
	<div class="subnav">
		<ul>
			<li>主页</li>
			<li class="bgorange white">喜欢</li>
			<li>最近</li>
			<li class="bgyellow white">消息</li>
			<li>我的爆料</li>
			<li>邀请好友</li>
		</ul>
	</div>
	<div class="column pb50">
        <div class="colwrap">
        	<div class="dress"><!--1-->
            	<div class="dresspic">
                	<a href="#"><img src="image/member/image1.png"></a>
                </div>
                <div class="dressprice">
                	<div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                    	<span>删除</span>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                	<span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        	<div class="dress"><!--2-->
            	<div class="dresspic">
                	<a href="#"><img src="image/member/image1.png"></a>
                </div>
                <div class="dressprice">
                	<div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                    	<a href="#" class="orange">删除</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                	<span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        	<div class="dress"><!--3-->
            	<div class="dresspic">
                	<a href="#"><img src="image/member/image2.png"></a>
                </div>
                <div class="dressprice">
                	<div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                    	<a href="#" class="orange">删除</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                	<span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        	<div class="dress" style="margin-right:0;"><!--4-->
            	<div class="dresspic">
                	<a href="#"><img src="image/member/image3.png"></a>
                </div>
                <div class="dressprice">
                	<div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                    	<a href="#" class="orange">删除</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                	<span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        	<div class="dress mt" ><!--5-->
            	<div class="dresspic">
                	<a href="#"><img src="image/member/image4.png"></a>
                </div>
                <div class="dressprice">
                	<div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                    	<a href="#" class="orange">删除</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                	<span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        	<div class="dress mt"><!--6-->
            	<div class="dresspic">
                	<a href="#"><img src="image/member/image3.png"></a>
                </div>
                <div class="dressprice">
                	<div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                    	<a href="#" class="orange">删除</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                	<span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        	<div class="dress mt"><!--7-->
            	<div class="dresspic">
                	<a href="#"><img src="image/member/image4.png"></a>
                </div>
                <div class="dressprice">
                	<div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                    	<a href="#" class="orange">删除</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                	<span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        	<div class="dress mt" style="margin-right:0;"><!--8-->
            	<div class="dresspic">
                	<a href="#"><img src="image/member/image2.png"></a>
                </div>
                <div class="dressprice">
                	<div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                    	<a href="#" class="orange">删除</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                	<span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="clear"></div>            
        </div><!--column wrap end-->
        <div class="colwrap">喜欢</div>
        <div class="colwrap">最近</div>
        <div class="colwrap">消息</div>
        <div class="colwrap">我的爆料</div>
        <div class="colwrap">邀请好友</div>
    </div>

    <div class="clear"></div>

</div>


<div class="footer">
	<div class="findbox">
		<div class="find font16">
			<span class="pt10">发现</span>
		</div>
	</div>
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
                <li>联系我们</li>
                <li>加入我们</li>
            </ul>
        </div>
    </div><!--footbox end-->
	<div class="copyright gray">Copyright © 2013 Phoenix New Media Limited All Rights Reserved.</div>
</div><!--footer end-->    
<script type="text/javascript">
    $(".subnav ul li").click(function(){
        $(".column .colwrap").hide().eq($(this).index()).show();
    });
</script>
<<<<<<< HEAD
=======
<script type="text/javascript">
$.ajax({
    url:"<%=request.getContextPath()%>/yqhuiyuan/queryshop",
    type:"post",
    dataType: "json",
    success: function (data) {

        if (data.success) {
            $('#y_goods').datagrid('load');
        } else {
            $.messager.alert("删除失败！");
        }
    }
})

})
</script>
>>>>>>> origin/master
</body>
</html>