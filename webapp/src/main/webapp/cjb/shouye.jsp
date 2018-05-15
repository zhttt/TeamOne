<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/5/15
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css" />
    <!-- js调用部分begin -->
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.yomi.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.flexslider-min.js"></script>
    <script src="<%=request.getContextPath()%>/js/totop.js" type="text/javascript"></script>
    <script>
        $(function(){
            $('.flexslider').flexslider({
                directionNav: true,
                pauseOnAction: false
            });
        });
        //
    </script>
    <!-- js调用部分end -->
</head>

<body>
${da.name}111111111111111111111
<div class="header">
    <div class="topbar">
        <span><a href="#">QQ登录</a></span><span><a href="#">微博登陆</a></span>&nbsp;<span class="hr-line">|</span>
        <span class="item"><a href="login.html">登录</a></span><span class="item"><a href="login.html">注册</a></span>&nbsp;<span class="hr-line">|</span>
        <span class="orange"><a href="#">积分签到</a></span>
    </div>
    <div class="headbox">
        <div class="logo"><img src="<%=request.getContextPath()%>/image/logo.png" /></div>
        <div class="searchbox">
            <div class="tips-num gray">今日更新&nbsp;<span class="green">298</span>&nbsp;款</div>
            <form id="submitform">
                <input id="searchText" type="text" class="text gray" value='今秋"时尚"看我的，国庆出门美美的'  onFocus="if (this.value==this.defaultValue) this.value='';" onblur="if (this.value=='') this.value=this.defaultValue;"/>
                <input id="searchSubmit" type="submit" value=""/>
            </form>
            <div class="tipswrap">
                <div class="tipsbox">
                    <a href="#" />
                    <img src="<%=request.getContextPath()%>/image/tips-icon1.jpg" /></br>
                    <span class="gray">看过</span>
                    </a>
                </div>
                <span class="gray">|</span>
                <div class="tipsbox">
                    <a href="#" />
                    <img src="<%=request.getContextPath()%>/image/tips-icon2.jpg" /></br>
                    <span class="gray">收藏</span>
                    </a>
                </div>
            </div><!--tipswrap end--><div class="clear"></div>
        </div><!--searchbox end-->

    </div><!--headbox end-->
    <div class="nav">
        <ul class="cate">
            <li class="font16"><a href="index.html">首页</a></li>
            <li class="font16"><a href="#">今日推荐</a></li>
            <li class="font16"><a href="#">逛街</a></li>
            <li class="font14"><a href="#">女装</a></li>
            <li class="font14"><a href="#">男装</a></li>
            <li class="font14"><a href="#">鞋包</a></li>
            <li class="font14"><a href="#">家居</a></li>
            <li class="font14"><a href="#">零食</a></li>
            <li class="font14"><a href="#">护肤</a></li>
            <li class="font14"><a href="#">母婴</a></li>
            <li class="font14"><a href="#">配饰</a></li>
            <li class="font16"><a href="theme.html">主题购物</a></li>
            <li class="font16"><a href="applyfree.html">免费申请</a></li>
            <div class="clear"></div>
        </ul>

    </div>
</div>

<!--图片滚动效果-->
<div class="flexslider">
    <ul class="slides">
        <li style="background:url(<%=request.getContextPath()%>/image/banner/img1.jpg) 50% 0 no-repeat;"><a href="#">div+css</a></li>
        <li style="background:url(<%=request.getContextPath()%>/image/banner/img2.jpg) 50% 0 no-repeat;"><a href="#">div-css</a></li>
        <li style="background:url(<%=request.getContextPath()%>/image/banner/img3.jpg) 50% 0 no-repeat;"><a href="#">div css</a></li>
        <li style="background:url(<%=request.getContextPath()%>/image/banner/img4.jpg) 50% 0 no-repeat;"><a href="#">css div</a></li>
        <li style="background:url(<%=request.getContextPath()%>/image/banner/img5.jpg) 50% 0 no-repeat;"><a href="#">html</a></li>
        <li style="background:url(<%=request.getContextPath()%>/image/banner/i1920x487-2.jpg) 50% 0 no-repeat;"><a href="#">html5</a></li>
    </ul>
</div>
<!--回到顶部-->
<div class="bottom_tools">
    <div class="qr_tool">二维码</div>
    <a id="feedback" href="#" title="意见反馈">意见反馈</a>
    <a id="scrollUp" href="#" title="飞回顶部"></a>
    <img class="qr_img" src="<%=request.getContextPath()%>/image/qr_img.png">
</div>

<!--container start-->
<div class="container bgstyle">
    <!--hotbox start-->
    <ul class="hotbox">
        <li class="hot">
            <div class="icon i1"><a href="#"></a></div>
            <div class="font16"><a href="#">主题购物</a></div>
            <div><a class="gray" href="#" >十一出游装扮</a></div>
        </li>
        <li class="hot">
            <div class="icon i2"><a href="#"></a></div>
            <div class="font16"><a href="#">免费申领</a></div>
            <div><a class="gray" href="#" >免费领取大奖</a></div>
        </li>
        <li class="hot">
            <div class="icon i3"><a href="#"></a></div>
            <div class="font16"><a href="#">猜价赢奖</a></div>
            <div><a class="gray" href="#">猜对奖品拿走</a></div>
        </li>
        <li class="hot">
            <div class="icon i4"><a href="#"></a></div>
            <div class="font16"><a href="#">我要爆料</a></div>
            <div><a class="gray" href="#">优质商品推荐</a></div>
        </li>
        <li class="hot" style="margin-right:0;">
            <div class="icon i5"><a href="#"></a></div>
            <div class="font-16"><a href="#">邀请好友</a></div>
            <div><a class="gray" href="#">赢取手机话费</a></div>
        </li>
    </ul><!--hotbox end-->
    <div class="clear"></div>
    <!--colum tuijian start-->
    <div class="column">
        <div class="colbox">
            <div class="coltitle" style="width:780px;"><h1><a href="#">今日爆款推荐</a></h1>&nbsp;&nbsp;<span class="tipword gray">精品秒杀，限量稀缺</span></div>
            <div class="timer"><span class="gray tipword" style="float:left;">距本场结束仅剩</span><div class="yomibox" data="2016-4-30 00:00:09"></div></div>
        </div>
        <div class="clear"></div>

        <div class="goods">
            <div class="goodsname"><a href="#">原创手工&nbsp;素年锦陶 猫咪陶瓷手链</a></div>
            <div class="goodspic"><a href="#"><img src="<%=request.getContextPath()%>/image/images/1.jpg" /></a></div>
            <div class="goodsprice">
                <a href="#">
                    <span class="orange font16num">￥</span><span class="orange font32">7.0</span>&nbsp;<span>原价:￥58</span>
                </a>
                <input type="button" value="去购买" />
            </div>
            <div class="goodsdetail">原创手工素年锦陶 猫咪陶瓷手链,黑猫 猫咪 首饰品，原创手工礼品物。图案：小猫、小狗，小猪小动物，网聚特色</div>
        </div>
        <div class="goods">
            <div class="goodsname"><a href="#">原创手工&nbsp;素年锦陶 猫咪陶瓷手链</a></div>
            <div class="goodspic"><a href="#"><img src="<%=request.getContextPath()%>/image/images/1.jpg" /></a></div>
            <div class="goodsprice">
                <a href="#">
                    <span class="orange font16">￥</span><span class="orange font32">7.0</span>&nbsp;<span>原价:￥58</span>
                </a>
                <input type="button" value="去购买"/>
            </div>
            <div class="goodsdetail">原创手工素年锦陶 猫咪陶瓷手链,黑猫 猫咪 首饰品，原创手工礼品物。图案：小猫、小狗，小猪小动物，网聚特色</div>
        </div>
        <div class="goods" style="margin-right:0;">
            <div class="goodsname"><a href="#">原创手工&nbsp;素年锦陶 猫咪陶瓷手链</a></div>
            <div class="goodspic"><a href="#"><img src="<%=request.getContextPath()%>/image/images/1.jpg" /></a></div>
            <div class="goodsprice">
                <a href="#">
                    <span class="orange font16">￥</span><span class="orange font32">7.0</span>&nbsp;<span>原价:￥58</span>
                </a>
                <input type="button" value="去购买">
            </div>
            <div class="goodsdetail">原创手工素年锦陶 猫咪陶瓷手链,黑猫 猫咪 首饰品，原创手工礼品物。图案：小猫、小狗，小猪小动物，网聚特色</div>
        </div>
    </div><!--colum tuijian end-->
    <div class="clear"></div>
    <!--column  theme  start-->
    <div class="column">
        <div class="colbox">
            <div class="coltitle"><h1><a href="#">主题购物</a></h1></div>
            <div class="colmore"><a href="#">更多</a></div>
        </div>
        <div class="theme">
            <div class="themepic "><a href="#"><img src="<%=request.getContextPath()%>/image/images/theme1.jpg"></a></div>
            <div class="themenum"><span class="font32">3</span>期</div>
            <div class="themename font16"><a href="#">超CHIC办公室女郎</a></div>
            <div class="themebox">
                <div class="thegoods"><a href="#"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></a></div>
                <div class="thegoods"><a href="#"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></a></div>
                <div class="thegoods"><a href="#"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></a></div>
                <div class="thegoods"><a href="#"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></a></div>
                <div class="thegoodsnum backg"><span class="num">118</span></br><span>商品</span></div>
                <div class="clear"></div>
            </div>

        </div>
        <div class="theme">
            <div class="themepic "><img src="<%=request.getContextPath()%>/image/images/theme1.jpg"></div>
            <div class="themenum"><span class="font32">4</span>期</div>
            <div class="themename font16">超CHIC办公室女郎</div>
            <div class="themebox">
                <div class="thegoods"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></div>
                <div class="thegoods"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></div>
                <div class="thegoods"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></div>
                <div class="thegoods"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></div>
                <div class="thegoodsnum backg"><span class="num">99</span></br><span>商品</span></div>
                <div class="clear"></div>
            </div>

        </div>
        <div class="theme" style="margin-right:0;">
            <div class="themepic "><img src="<%=request.getContextPath()%>/image/images/theme1.jpg"></div>
            <div class="themenum"><span class="font32">5</span>期</div>
            <div class="themename font16"><a href="#">超CHIC办公室女郎</a></div>
            <div class="themebox">
                <div class="thegoods"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></div>
                <div class="thegoods"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></div>
                <div class="thegoods"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></div>
                <div class="thegoods"><img src="<%=request.getContextPath()%>/image/images/thegood1.jpg"></div>
                <div class="thegoodsnum backg"><span class="num">65</span></br><span>商品</span></div>
                <div class="clear"></div>
            </div>

        </div>
        <div class="clear"></div>
    </div><!--column  theme  end-->
    <!--column hotags star-->
    <div class="column">
        <div class="colbox">
            <div class="coltitle"><h1><a href="#">热门标签</a></h1>&nbsp;&nbsp;<span class="tipword gray">当季热门关键字</span></div>
            <div class="colmore"><a href="#">更多</a></div>
        </div>
        <div class="hotags">
            <div class="tagpic"><a href="#"><img src="<%=request.getContextPath()%>/image/images/hotagspics_coat.jpg"></a></div>
            <div class="tagpicname"><a href="#">衣服</a></div>
            <div class="tagtext">
                <a href="#">连衣裙</a><span>|</span><a href="#">针织衫</a><span>|</span>
                <a href="#">衬衫</a><span>|</span><a href="#">早秋新品</a>
            </div>
        </div>
        <div class="hotags">
            <div class="tagpic"><a href="#"><img src="<%=request.getContextPath()%>/image/images/hotagspics_shoes.jpg"></a></div>
            <div class="tagpicname"><a href="#">鞋子</a></div>
            <div class="tagtext">
                <a href="#">帆布鞋</a><span>|</span><a href="#">平底单鞋</a><span>|</span>
                <a href="#">短靴</a><span>|</span><a href="#">休闲鞋</a>
            </div>
        </div>
        <div class="hotags" style="margin-right:0;">
            <div class="tagpic"><a href="#"><img src="<%=request.getContextPath()%>/<%=request.getContextPath()%>/image/images/hotagspics_bag.jpg"></a></div>
            <div class="tagpicname"><a href="#">包包</a></div>
            <div class="tagtext">
                <a href="#">真皮</a><span>|</span><a href="#">撞色宝</a><span>|</span>
                <a href="#">单肩包</a><span>|</span><a href="#">手包</a>
            </div>
        </div>
        <div class="hotags">
            <div class="tagpic"><a href="#"><img src="<%=request.getContextPath()%>/image/images/hotagspics_food.jpg"></a></div>
            <div class="tagpicname"><a href="#">食品</a></div>
            <div class="tagtext">
                <a href="#">五常大米</a><span>|</span><a href="#">纯牛奶</a><span>|</span>
                <a href="#">月饼</a><span>|</span><a href="#">进口</a>
            </div>
        </div>
        <div class="hotags">
            <div class="tagpic"><a href="#"><img src="<%=request.getContextPath()%>/image/images/hotagspics_houseware.jpg"></a></div>
            <div class="tagpicname"><a href="#">家具</a></div>
            <div class="tagtext">
                <a href="#">淋雨花洒</a><span>|</span><a href="#">厨卫</a><span>|</span>
                <a href="#">吸顶灯</a><span>|</span><a href="#">实木</a>
            </div>
        </div>
        <div class="hotags" style="margin-right:0;">
            <div class="tagpic"><a href="#"><img src="<%=request.getContextPath()%>/image/images/hotagspics_toiletry.jpg"></a></div>
            <div class="tagpicname"><a href="#">护肤</a></div>
            <div class="tagtext">
                <a href="#">口红</a><span>|</span><a href="#">彩妆</a><span>|</span>
                <a href="#">保湿滋润</a><span>|</span><a href="#">隔离</a>
            </div>
        </div>
    </div>
    <div class="clear"></div><!--column hotags end -->
    <!--column dress start-->
    <div class="column">
        <div class="colbox">
            <div class="coltitle">
                <h1><a href="#">魅力女装</a></h1>&nbsp;&nbsp;
                <div class="coltag">
                    <a href="#" class="lab">经典格纹</a><a href="#" class="lab">小立领</a>
                    <a href="#" class="lab">衬衫</a><a href="#" class="lab">太空棉</a>
                </div>
            </div>
            <div class="sorbar">
                <a href="#" class="lab1">默认</a><a href="#" class="lab2">折扣↑</a><a href="#" class="lab2">价格↑</a><a href="#" class="lab3">人群</a>
            </div>
        </div>
        <div class="colwrap">
            <div class="dress"><!--1-->
                <div class="dresspic picbox">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress2.jpg"></a>
                    <div class="pictext">
                        <div class="text"><a href="#">2012新品男T恤韩版短袖男士夏装男装翻领t恤POLO衫 货到付款 T93</a> </div>
                        <div class="grayer">原价：￥58</div>
                    </div>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress"><!--2-->
                <div class="dresspic picbox">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress4.jpg"></a>
                    <div class="pictext">
                        <div class="text"><a href="#">2012新品男T恤韩版短袖男士夏装男装翻领t恤POLO衫 货到付款 T93</a> </div>
                        <div class="grayer">原价：￥58</div>
                    </div>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress"><!--3-->
                <div class="dresspic picbox">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress3.jpg"></a>
                    <div class="pictext">
                        <div class="text"><a href="#">2012新品男T恤韩版短袖男士夏装男装翻领t恤POLO衫 货到付款 T93</a> </div>
                        <div class="grayer">原价：￥58</div>
                    </div>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress" style="margin-right:0;"><!--4-->
                <div class="dresspic picbox">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                    <div class="pictext">
                        <div class="text"><a href="#">2012新品男T恤韩版短袖男士夏装男装翻领t恤POLO衫 货到付款 T93</a> </div>
                        <div class="grayer">原价：￥58</div>
                    </div>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt" ><!--5-->
                <div class="dresspic picbox">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                    <div class="pictext">
                        <div class="text"><a href="#">2012新品男T恤韩版短袖男士夏装男装翻领t恤POLO衫 货到付款 T93</a> </div>
                        <div class="grayer">原价：￥58</div>
                    </div>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt"><!--6-->
                <div class="dresspic picbox">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                    <div class="pictext">
                        <div class="text"><a href="#">2012新品男T恤韩版短袖男士夏装男装翻领t恤POLO衫 货到付款 T93</a> </div>
                        <div class="grayer">原价：￥58</div>
                    </div>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt"><!--7-->
                <div class="dresspic picbox">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                    <div class="pictext">
                        <div class="text"><a href="#">2012新品男T恤韩版短袖男士夏装男装翻领t恤POLO衫 货到付款 T93</a> </div>
                        <div class="grayer">原价：￥58</div>
                    </div>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt" style="margin-right:0;"><!--8-->
                <div class="dresspic picbox">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                    <div class="pictext">
                        <div class="text"><a href="#">2012新品男T恤韩版短袖男士夏装男装翻领t恤POLO衫 货到付款 T93</a> </div>
                        <div class="grayer">原价：￥58</div>
                    </div>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div><!--column dress end-->
    <div class="clear"></div>
    <!--column man start-->
    <div class="column">
        <div class="colbox">
            <div class="coltitle">
                <h1><a href="#">潮流男装</a></h1>&nbsp;&nbsp;
                <div class="coltag">
                    <a href="#" class="lab">经典格纹</a><a href="#" class="lab">小立领</a>
                    <a href="#" class="lab">衬衫</a><a href="#" class="lab">太空棉</a>
                </div>
            </div>
            <div class="sorbar">
                <a href="#" class="lab1">默认</a><a href="#" class="lab2">折扣↑</a><a href="#" class="lab2">价格↑</a><a href="#" class="lab3">人群</a>
            </div>
        </div>
        <div class="colwrap">
            <div class="dress"><!--1-->
                <div class="dresspic">
                    <a href="<%=request.getContextPath()%>/image/images/dress3.jpg" class="tooltip"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
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
                    <a href="<%=request.getContextPath()%>/image/images/dress3.jpg" class="tooltip"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
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
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
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
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
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
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt">
                <div class="dresspic">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt">
                <div class="dresspic">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt" style="margin-right:0;">
                <div class="dresspic">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        </div>
    </div><!--column man end-->
    <div class="clear"></div>
    <!--column shoes start-->
    <div class="column">
        <div class="colbox">
            <div class="coltitle">
                <h1><a href="#">时尚鞋包</a></h1>&nbsp;&nbsp;
                <div class="coltag">
                    <a href="#" class="lab">经典格纹</a><a href="#" class="lab">小立领</a>
                    <a href="#" class="lab">衬衫</a><a href="#" class="lab">太空棉</a>
                </div>
            </div>
            <div class="sorbar">
                <a href="#" class="lab1">默认</a><a href="#" class="lab2">折扣↑</a><a href="#" class="lab2">价格↑</a><a href="#" class="lab3">人群</a>
            </div>
        </div>
        <div class="colwrap">
            <div class="dress"><!--1-->
                <div class="dresspic">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
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
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
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
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
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
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
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
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt">
                <div class="dresspic">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt">
                <div class="dresspic">
                    <a href="#"><img src="<%=request.getContextPath()%>//images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
            <div class="dress mt" style="margin-right:0;">
                <div class="dresspic">
                    <a href="#"><img src="<%=request.getContextPath()%>/image/images/dress1.jpg"></a>
                </div>
                <div class="dressprice">
                    <div class="sl"><a href="#" class="orange"><h3>￥</h3><h1>27.0</h1></a></div>
                    <div class="sr">
                        <a href="#" class="orange">1.7折</a>&nbsp;<span>|</span>&nbsp;<a href="#">❤698</a>&nbsp;<span>|</span>&nbsp;<a href="#">分享</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="dressdetail">
                    <span class="sl"><a href="#">minusl旗舰店</a></span>
                    <span class="sr"><em class="orange">4795</em>人已开抢</span>
                </div>
            </div>
        </div>
    </div>
    <!--column shoes end-->
    <div class="clear"></div>

    </br></br > </br></br ></br></br >
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
            <div class="wxlogo"><img src="<%=request.getContextPath()%>/image/logo.png"></div>
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
<script>
    $(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/cjbshouController/queryshou.do"
        })
    })

</script>
<script>
    <!--导航点击出现下划线-->
    /*$(document).ready(function(){

        $("ul.cate li").mouseover(function(){
            $("ul.cate li").removeClass('unline');
            $(this).addClass('unline');

            $('ul .cate li a').click(function(){
                $("ul.cate li a").css('color','#000');
                $(this).css('color','#ff3a27');
                });

            }),function(){
            $("ul.cate li").removeClass('unline');
            $("ul.cate li.lihome").addClass('unline');}
        });*/
    //鼠标经过图片 下方出现半透明提示文字
    $(document).ready(function(){
        $(".pictext").hide();
        $(".picbox").hover(function(){

            $(".pictext",this).stop(true).slideToggle(500);


        });
    });
    //鼠标经过图片 出现图片放大效果
    $(function(){
        var x = 10;
        var y = 20;
        $("a.tooltip").mouseover(function(e){
            this.myTitle = this.title;
            this.title = "";
            var imgTitle = this.myTitle? "<br/>" + this.myTitle : "";
            var tooltip = "<div id='tooltip'><img src='"+ this.href +"' alt='产品预览图'/>"+imgTitle+"<\/div>"; //创建 div 元素
            $("body").append(tooltip);	//把它追加到文档中
            $("#tooltip")
                .css({
                    "top": (e.pageY+y) + "px",
                    "left":  (e.pageX+x)  + "px"
                }).show("fast");	  //设置x坐标和y坐标，并且显示
        }).mouseout(function(){
            this.title = this.myTitle;
            $("#tooltip").remove();	 //移除
        }).mousemove(function(e){
            $("#tooltip")
                .css({
                    "top": (e.pageY+y) + "px",
                    "left":(e.pageX+x) + "px"
                });
        });
    })




</script>
</body>
</html>
