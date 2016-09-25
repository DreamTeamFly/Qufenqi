<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% boolean sessionList=false;
	if( session.getAttribute("StorageProduct") != null ) {
		sessionList=true;
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商家中心 仓库中的宝贝</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/StorageManager.css">
 
</head>
  
<style type="text/css">
.current{ background-color:#009ad6; }
</style>
  <body>
    <!-- 右侧账户信息和店铺信息 -->
        <div class="top3_divright">
        	<!-- 第一层table -->
        	<table class="top3_table">
        	<tr height=30px class="top3_table1_tr" ><td>
        		<span>趣分期提醒您：</span> 请核对您发布的商品是否符合商品违规发布累计扣12分将停业7天。
        	</td></tr>
        	<tr><td>
        		<!-- 仓库宝贝导航栏 -->
        		<jsp:include page="StorageManagerRightLine.html"></jsp:include>
        		
        	</td></tr>
        	<tr><td>
        		<!-- 右侧栏具体内容区域 -->
        		<div class="top3_contextDIV">
	        		<% System.out.println(sessionList);
	        			if( sessionList ) {%>
	        			<jsp:include page="StorageManagerRightContextQueryResult.jsp"></jsp:include>
	        		<%}
	        		  else {%>
		        		
	        		<!-- 仓库宝贝查询表单 -->
	        		<jsp:include page="StorageManagerRightContextQueryForm.jsp"></jsp:include>
	        		<!-- 暂时没有记录 -->
	        		<div class="top3_div2">
	        			找不到您的宝贝？您可能长时间没有编辑过宝贝，请查看 
	        			<a href="#">历史宝贝记录>></a>
	        		</div>
		        	<div class="top3_div2">共有下架宝贝0条记录</div>
		        	<div class="top3_div4">没有找到符合条件的宝贝</div>	

		        	<%} %>
		        	
		        <!-- 右侧栏具体内容区域结束 -->	
	        	</div>
        	</td></tr>
        	<!-- 第一层table结束 -->
        	</table>
        	
        <!-- 右侧账户信息和店铺信息结束 -->	
        </div>
  </body>
</html>
