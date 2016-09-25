<%@ page language="java" import="java.util.*" pageEncoding="utf-8" errorPage="../jsp/err.jsp" %>
<%	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" href="${pageContext.request.contextPath}/css/MainFram.css" rel="stylesheet" />
    <title>趣分期</title>
    
    <script language="javascript">

	if(top.location != self.location)
	{
		top.location = self.location;
	}
    </script>
    
</head>

<body>

<!-- 头部信息栏，引用外部JSP文件 -->
	<div class="div_top1">
    	<jsp:include page="../jsp/topLine.jsp" ></jsp:include>
    </div>
    
<!-- 中部正文 -->    
    <div class="div_middle" >
    
	<!--头部搜索栏-->
	<div class="div_top2">
    	<img src="images/mainframe/MainFram02.jpg" class="top2_img1" />
        <table border="0" cellspacing="0" class="top2_table" >
          <tr>
          	<td colspan="6">
            	<input type="text" name="condition" class="top_text" value="" onfocus="this.value=''" />
            </td>
            <td><a href="${pageContext.request.contextPath}/Query/Product_1.jsp"><img src="images/mainframe/MainFram03.JPG" /></a></td>
          </tr>
          <tr>
          	<td class="top2_td"><a href="" class="top2_font2">运动鞋</a></td>
            <td class="top2_td"><a href="" class="top2_font2">女鞋</a></td>
            <td class="top2_td"><a href="" class="top2_font2">女包</a></td>
            <td class="top2_td"><a href="" class="top2_font2">家电</a></td>
            <td class="top2_td"><a href="" class="top2_font2">食品</a></td>
            <td class="top2_td2"><a href="" class="top2_font2">外套</a></td>
            <td class="top2_td2"></td>
          </tr>
        </table>
    </div>
<!--头部全部分类栏-->
	<div class="div_top3">
    	<div class="top3_div1">
        	<div class="top3_div2">全部分类</div>
        	<table class="top3_table">
            <tr><td class="top3_td1">1F</td>
            	<td width="55px"><img src="images/mainframe/top3-1.png"  /></td>
                <td class="top3_td2"><a href="">快速查询</a></td></tr>
            <tr><td class="top3_td1">2F</td>
            	<td><img src="images/mainframe/top3-3.png"  /></td>
                <td class="top3_td2"><a href="">最惠订购</a></td></tr>
            <tr><td class="top3_td1">3F</td>
            	<td><img src="images/mainframe/top3-5.png"  /></td>
                <td class="top3_td2"><a href="">最真口碑</a></td></tr>
            <tr><td class="top3_td1">4F</td>
            	<td><img src="images/mainframe/top3-4.png"  /></td>
                <td class="top3_td2"><a href="">连 锁 店</a></td></tr>
            <tr><td class="top3_td1">5F</td>
            	<td><img src="images/mainframe/top3-7.png"  /></td>
                <td class="top3_td2"><a href="">环球美食</a></td></tr>
            <tr><td class="top3_td1">6F</td>
            	<td><img src="images/mainframe/top3-8.png"  /></td>
                <td class="top3_td2"><a href="">美食图库</a></td></tr>
            </table>
        </div>
        <!--轮播图-->
		<div class="flash">
            <!-- 图片展示 -->
            <ul class="con">
                <li style="background-image:url(images/mainframe/img1.jpg)"></li>
                <li style="background-image:url(images/mainframe/img2.jpg)"></li>
                <li style="background-image:url(images/mainframe/img3.jpg)"></li>
                <li style="background-image:url(images/mainframe/img4.jpg)"></li>
            </ul>
            <!-- 图片按钮 -->
            <ul class='but'>
            <li class="current"></li>
            <li></li>
            <li></li>
            <li></li>
            </ul>
    	</div>
    </div>
    
	<!--中部新品上市产品展示-->
	<div class="div_top4">
    	<!--头部-->
    	<div class="top4_div1">
        	<img src="images/mainframe/top4-1.JPG" class="top4_img1" />
            <div class="top4_font1">美食抢购</div>
            <hr class="top4_hr" />
        </div>
        <!--正文-->
        <div class="top4_div2">
        	<a href="${pageContext.request.contextPath}/orderForm.do?flag=orderFood&&id=1" target="_blank"><img src="foodPrcture/NiuPai/NiuPaiPiSa.JPG" class="top4_img2" /></a>
            <div class="top4_div3">牛排披萨</div>
            <div class="top4_font2">门店价：45元</div>
            <div class="top4_font3">网购价：</div>
            <div class="top4_font4">&nbsp; 42 元 </div>
            <div class="top4_div4">
            	<a href="${pageContext.request.contextPath}/orderForm.do?flag=orderFood&&id=1" target="_blank"><img src="images/top5-lijiXiaDan.JPG" /></a></div>
        </div>
        <div class="top4_div5">
        	<a href="${pageContext.request.contextPath}/orderForm.do?flag=orderFood&&id=2"><img src="foodPrcture/GaiJiaofan/Gaijiaofan.jpg" class="top4_img2" /></a>
            <div class="top4_div3">美味盖浇饭</div>
            <div class="top4_font2">门店价：24元</div>
            <div class="top4_font3">网购价：</div>
            <div class="top4_font4">&nbsp; 20 元 </div>
            <div class="top4_div4">
            	<a href="${pageContext.request.contextPath}/orderForm.do?flag=orderFood&&id=2"><img src="images/top5-lijiXiaDan.JPG" /></a></div>
        </div>
        <div class="top4_div5">
        	<a href="${pageContext.request.contextPath}/orderForm.do?flag=orderFood&&id=3"><img src="foodPrcture/YangZhouchaofan/Yangzhouchaofan.jpg" class="top4_img2" /></a>
            <div class="top4_div3">扬州炒饭</div>
            <div class="top4_font2">门店价：25元</div>
            <div class="top4_font3">网购价：</div>
            <div class="top4_font4">&nbsp; 22 元 </div>
            <div class="top4_div4">
            	<a href="${pageContext.request.contextPath}/orderForm.do?flag=orderFood&&id=3"><img src="images/top5-lijiXiaDan.JPG" /></a></div>
        </div>
        <div class="top4_div5">
        	<a href="${pageContext.request.contextPath}/orderForm.do?flag=orderFood&&id=4"><img src="foodPrcture/ShiZitou/HongShaoShizitou.jpg" class="top4_img2" /></a>
            <div class="top4_div3">红烧狮子头</div>
            <div class="top4_font2">门店价：70元</div>
            <div class="top4_font3">网购价：</div>
            <div class="top4_font4">&nbsp; 59 元 </div>
            <div class="top4_div4">
            	<a href="${pageContext.request.contextPath}/orderForm.do?flag=orderFood&&id=4"><img src="images/top5-lijiXiaDan.JPG" /></a></div>
        </div>
        
    </div>
    
	<!--中部，店铺展示-->
	<div class="div_top5">
    	<!--头部-->
    	<div class="top4_div1">
        	<img src="images/mainframe/top5-1.JPG" class="top4_img1" />
            <div class="top4_font1">店铺抢占</div>
            <hr class="top4_hr" />
        </div>
        <!--正文-->
        <div class="top4_div2">
        	<a href="${pageContext.request.contextPath}/Shop/HuoGuoshop.jsp"><img src="foodPrcture/0-shop/HuoGuoshop/HuoGuoshop.jpg" class="top4_img2" /></a>
            <div class="top4_div3">喜刷刷火锅</div>
            <div class="top4_font2">四人套餐：233元</div>
            <div class="top4_font3">网购价：</div>
            <div class="top4_font4">&nbsp;188 元 </div>
            <div class="top4_div4">
            	<a href="${pageContext.request.contextPath}/Shop/HuoGuoshop.jsp"><img src="images/top4-lijiChaKan.JPG" /></a></div>
        </div>
        <div class="top4_div5">
        	<a href="${pageContext.request.contextPath}/Shop/HuoGuoshop.jsp"><img src="foodPrcture/0-shop/KaoYashop/kaoYashop.jpg" class="top4_img2" /></a>
            <div class="top4_div3">北京烤鸭</div>
            <div class="top4_font2">两人套餐：90元</div>
            <div class="top4_font3">网购价：</div>
            <div class="top4_font4">&nbsp; 88 元 </div>
            <div class="top4_div4">
            	<a href="${pageContext.request.contextPath}/Shop/HuoGuoshop.jsp"><img src="images/top4-lijiChaKan.JPG" /></a></div>
        </div>
        <div class="top4_div5">
        	<a href="${pageContext.request.contextPath}/Shop/HuoGuoshop.jsp"><img src="foodPrcture/0-shop/TianDianshop/TianDianshop.jpg" class="top4_img2" /></a>
            <div class="top4_div3">豪客甜品店</div>
            <div class="top4_font2">中级套餐：110元</div>
            <div class="top4_font3">网购价：</div>
            <div class="top4_font4">&nbsp; 88 元 </div>
            <div class="top4_div4">
            	<a href="${pageContext.request.contextPath}/Shop/HuoGuoshop.jsp"><img src="images/top4-lijiChaKan.JPG" /></a></div>
        </div>
        <div class="top4_div5">
        	<a href="${pageContext.request.contextPath}/Shop/HuoGuoshop.jsp"><img src="foodPrcture/0-shop/ZiZhuCangshop/ZiZhucangshop.png" class="top4_img2" /></a>
            <div class="top4_div3">一品味自助餐厅</div>
            <div class="top4_font2">四人套餐：130元</div>
            <div class="top4_font3">网购价：</div>
            <div class="top4_font4">&nbsp;109 元 </div>
            <div class="top4_div4">
            	<a href="${pageContext.request.contextPath}/Shop/HuoGuoshop.jsp"><img src="images/top4-lijiChaKan.JPG" /></a></div>
        </div>
        <div></div>
        <div></div>
    </div>
    
	<!--尾部，友情链接-->
	<div class="div_top6">
    	<div class="top6_div1">
        	<img src="images/mainframe/top6-1.JPG" style="margin-top:5px;" />
            <hr class="top4_hr" />
         </div>
         <div>
            <table border="0" cellspacing="0"><tr>
            	<td class="top6_td"><a href="">好食客加盟</a></td>
                <td class="top6_td"><a href="">好食客联盟</a></td>
                <td class="top6_td"><a href="">美食网</a></td>
                <td class="top6_td"><a href="">新浪美食</a></td>
                <td class="top6_td"><a href="">腾讯美食</a></td>
                <td class="top6_td"><a href="">世界美食网</a></td>
                <td class="top6_td"><a href="">我爱美食网</a></td>
              </tr></table>
           </div>
        
        <div>
    	<table border="0" cellspacing="0" class="top6_table1">
        <tr>
            <!--商务合作-->
            <td>
            	<table>
                	<tr><td class="top6_td2">商务合作</td></tr>
                	<tr><td class="top6_td3">市场合作</td></tr>
                    <tr><td class="top6_td3">美食联盟</td></tr>
                    <tr><td class="top6_td3">好食客邮箱</td></tr>
                    <tr><td class="top6_td3">营销商务平台</td></tr>
                </table>
            </td>
            <td></td>
            <!--购物指南-->
            <td>
            	<table>
                	<tr><td class="top6_td2">美食指南</td></tr>
                	<tr><td class="top6_td3"><a href="" style="color:#888;">提交订单</a></td></tr>
                    <tr><td class="top6_td3"><a href="" style="color:#888;">支付定金</a></td></tr>
                    <tr><td class="top6_td3"><a href="" style="color:#888;">退单退款</a></td></tr>
                    <tr><td class="top6_td3"><a href="" style="color:#888;">投诉指南</a></td></tr>
                </table>
            </td>
            <td></td>
            <!--常见问题-->
            <td>
            	<table>
                	<tr><td class="top6_td4">常见问题</td></tr>
                	<tr><td class="top6_td3"><a href="" style="color:#888;">
                    	收不到手机确认码怎么办？</a></td></tr>
                    <tr><td class="top6_td3"><a href="" style="color:#888;">
                    	未收到商品怎么办？</a></td></tr>
                    <tr><td class="top6_td3"><a href="" style="color:#888;">
                    	付款后如何退款？</a></td></tr>
                    <tr><td class="top6_td3"><a href="" style="color:#888;">
                    	食物卫生未达标的店铺如何投诉？</a></td></tr>
                    <tr><td class="top6_td3"><a href="" style="color:#888;">
                    	线上支付安全吗？</a></td></tr>
                </table>
            </td>
            
            	<!--我们的二维码-->
                <td class="top6_td5">
                	<img src="images/mainframe/top6-QQ.JPG" class="top6_img1" />
                    <div class="top6_font">关注我们的QQ</div>
                </td>
                <td class="top6_td5">
                	<img src="images/mainframe/top6-WeiXin.png" class="top6_img1" />
                    <div  class="top6_font">关注我们的微信</div>
                </td>
                    
            
        </tr>
        </table>
        
        </div>
    </div>
    
</div>
<!-- 中部正文结束 -->
<!--尾部栏-->
	<div class="div_top7">欢迎来到好食客</div>

</body>
</html>
<!--引用外部文件 jquery类库-->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	var index=0;
	var playCount=null;

	$(".but li").hover(function(){
		clearInterval(playCount);//当我滑动时，要停止之前动画
		//给按扭添加样式，改变背景图片,并且除了本身之外的，同级的无素li 去掉样式 current
		$(this).addClass("current").siblings().removeClass('current');
		index=$(this).index();
		//显示对应的序列号的内容，并且隐藏其它的
		$(".con li").eq(index).fadeIn().siblings().fadeOut();
		//alert(index);
		
	}).mouseout(function(){
		auto_play();
	});

	//利用函数方法，实现自动播放
	function auto_play(){
	//设置自动播放函数
	playCount=setInterval(function(){
		index++;
		if(index>3){index=0;}//判断，当序列号超出我们的序列号时，设置为0
		//alert("自动播放的序列号"+index);
		$(".but li").eq(index).addClass("current").siblings().removeClass("current");
		$(".con li").eq(index).fadeIn().siblings().fadeOut();
	},3000);
		

	};
	
	auto_play();//调用方法

</script>

