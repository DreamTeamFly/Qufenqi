<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商家中心</title>
    <!-- ***仓库中的宝贝 ， 搜索售完下架的*** -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/MainShopCenter.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/StorageManager.css">
  </head>
  
  <body>
  <!-- 头部导航栏 -->
    <div>
    	<jsp:include page="../jsp/topLine.jsp"></jsp:include>
    </div>
    
<!-- 中部正文 --> 
<div class="div_middle" >     
  <!-- *****商家中心导航栏**** -->
  <div><jsp:include page="../jsp/shopCenterTopline.jsp"></jsp:include></div> 
  <!-- 正文 -->
  <div class="top3_div" >
  		<!-- ***左侧导航栏***** -->
        <div class="top3_divleft"><jsp:include page="../jsp/shopCenterLeftLine.jsp" /></div>
  	    
  	    <!-- 右侧账户信息和店铺信息 -->
        <div class="top3_divright">
        	<jsp:include page="../jsp/StorageManagerRightContext.jsp"></jsp:include>
        </div>
   </div>
    
    <!-- 尾部 -->
  	<div class="top5"><jsp:include page="../jsp/shopCenterBottomLine.jsp"></jsp:include></div>
  	
<!-- 中部正文结束 -->  	
</div>
  	
</body>
</html>
