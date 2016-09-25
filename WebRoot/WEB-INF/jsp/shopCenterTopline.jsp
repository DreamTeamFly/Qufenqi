<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商家中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/MainShopCenter.css">
	

  </head>
  
  <body>
    <!-- logo -->
  	<div>
  		<table><tr>
  		<td><img src="${pageContext.request.contextPath}/images/mainframe/MainFram02.jpg" class="img_logo"></td>
  		<td><div class="top1_div">商家中心</div></td>
  		</tr></table>
  	</div>
  	
  <!-- 正文商家中心导航栏 -->
  	<div class="top2_div" >
  		<table class="top2_table" cellspacing="0">
  			<tr><td onmouseover="this.style.background='#0071E1'" onMouseOut="this.style.background=''">
            		<a href="mainShopCenter.do?flag=showPage&where=mainframe">首页</a></td>
  				<td onmouseover="this.style.background='#0071E1'" onMouseOut="this.style.background=''">
                	<a href="mainShopCenter.do?flag=showPage&where=ruleCenter">规则中心</a></td>
  				<td onmouseover="this.style.background='#0071E1'" onMouseOut="this.style.background=''">
                	<a href="mainShopCenter.do?flag=showPage&where=safetyCenter">安全中心</a></td>
  				<td onmouseover="this.style.background='#0071E1'" onMouseOut="this.style.background=''">
                	<a href="mainShopCenter.do?flag=showPage&where=serviceCenter">服务中心</a></td>
  				<td onmouseover="this.style.background='#0071E1'" onMouseOut="this.style.background=''">
                	<a href="mainShopCenter.do?flag=showPage&where=shopBBS">商家论坛</a></td>
  				<td onmouseover="this.style.background='#0071E1'" onMouseOut="this.style.background=''">
                	<a href="mainShopCenter.do?flag=showPage&where=shopFeedback">商家反馈</a></td>
  			</tr>
  		</table>
  	</div>
  	
  </body>
</html>
