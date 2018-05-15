<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>免费申领</title>
<meta name="description" content="">
<meta name="keywords" content="">
<script src="js/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/applyfree.css" rel="stylesheet" type="text/css" />
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
    <div class="clear"></div>
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
            <div class="clear"></div> 
        </ul>

    </div>
</div><!--header end-->
<!--sidetip-->
<div class="sidebox">
	<div class="tip qq mb8"><a href=""></a></div>
	<div class="tip wx mb8"><a href=""></a></div>
	<div class="tip set mb8"><a href=""></a></div>
	<div class=" totop"><a href="javascript:void(0);">返回<br>顶部</a></div>	
</div>
<div class="container bgapply">
	<div class="bg1"></div>	
	<div class="bg2"></div>
	<div class="content">
		<div class="linkbox">
			<div class="linktitle"><strong>商品链接</strong></div>
			<div class="link"><input type="text" value="您要分享的超值商品"></div>
			<div class="linkcontent clearfix">
				<div class="linkimage fl"></div>
				<div class="linkinfo fl">
					<div class="title"><strong>商品标题</strong></div>
					<div class="text"><input type="text" value="商品标题" class="linktext2"></div>
					<div class="title pt35"><strong>商品价格</strong></div>
					<div class="text2 clearfix">
						<div class="fl"><label>原价</label><input type="text" value="商品标题" class="linktext3"></div>
						<div class="fl ml26"><label>现价</label><input type="text" value="商品标题" class="linktext3"></div>
					</div>
					<div class="pt60">
						<input type="button" value="上传图片" class="btnup"> <input type="button" value="提交分享" class="btnshare">
					</div>
				</div>
			</div>
		</div><!--linkbox end-->
		<div class="rule clearfix">
			<div class="ruledetail fl">
				<div class="box"><h3>参与规则说明</h3></div>				
				<div class="text">
					<h4>1.主题购物设计说明</h4>
					<p>在完成了针对网上购物市场的前期调查，同时与多位用户进行了全面深入地探讨和分析的基础上，提出了这份软件需求规格说明书。 </p>
				</div>
				<div class="text">
					<h4>2.主题购物设计说明</h4>
					<p>在完成了针对网上购物市场的前期调查，同时与多位用户进行了全面深入地探讨和分析的基础上，提出了这份软件需求规格说明书。 </p>
				</div>
				<div class="text">
					<h4>3.主题购物设计说明</h4>
					<p>在完成了针对网上购物市场的前期调查，同时与多位用户进行了全面深入地探讨和分析的基础上，提出了这份软件需求规格说明书。 </p>
				</div>
				<div class="text">
					<h4>4.主题购物设计说明</h4>
					<p>在完成了针对网上购物市场的前期调查，同时与多位用户进行了全面深入地探讨和分析的基础上，提出了这份软件需求规格说明书。 </p>
				</div>

			</div>
			<div class="rankbox fl">
				<div class="tab"><span class="colored">总提成</span><span class="colorgray">排行</span></div>
				<div class="ranklist">
					<table>
						<thead>
							<tr>
								<td>排名</td><td>头像</td><td>昵称</td><td>总金额</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td width=30><span class="num">1</span></td><td width=50><span class="pic"></span></td><td width=80>56432</td><td width=70>￥7429</td>
							</tr>
							<tr>
								<td width=30><span class="num">2</span></td><td><span class="pic"></span></td><td>56432</td><td>￥7429</td>
							</tr>
							<tr>
								<td width=30><span class="num">3</span></td><td><span class="pic"></span></td><td>56432</td><td>￥7429</td>
							</tr>
							<tr>
								<td width=30><span class="num">4</span></td><td><span class="pic"></span></td><td>56432</td><td>￥7429</td>
							</tr>
							<tr>
								<td width=30><span class="num">5</span></td><td><span class="pic"></span></td><td>56432</td><td>￥7429</td>
							</tr>
							<tr>
								<td width=30><span class="num">6</span></td><td><span class="pic"></span></td><td>56432</td><td>￥7429</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="findbox applyfind">
		<div class="find font16 findpo">
			<span class="pt10">发现</span>
		</div>
	</div>
</div><!--container end-->
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
                <li>联系我们</li>
                <li>加入我们</li>
            </ul>
        </div>
    </div><!--footbox end-->
	<div class="copyright gray">Copyright © 2013 Phoenix New Media Limited All Rights Reserved.</div>
</div><!--footer end--> 
<script type="text/javascript">
/*$(function(){
	$(window).scroll(function(){
	var scrolltop=$(window).scrollTop();	
		if(scrolltop>100){
			$(".totop").fadeIn(1000);
			}
		else{
			$(".totop").fadeOut(1000);
			}		
		});
	$(".totop").click(function(){
		$("body,html").animate({scrollTop:0},1000);
		});
	});*/

	function move(){
		var scrolltop=$(document).scrollTop();
		var newPosition=scrolltop+menuPosition;
		if($(window).height()<$('.sidebar').height()){
			$('.sidebox').css('top',menuPosition);
		} else {
			$('.sidebox').stop().animate({top: newPosition}, "slow");
		}

	}	
$(window).load(function(){
	menuPosition=$(".sidebox").position().top;	
	console.log(menuPosition);
});
$(function(){
	$(window).scroll(function(){
		move();
	});
	
});


</script>     
</body>
</html>