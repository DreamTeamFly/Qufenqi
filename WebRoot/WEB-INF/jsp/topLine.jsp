<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%	String loginstr1="注册";
	String loginstr2="登录";
	if(request.getSession().getAttribute("loginUser") != null)
	{
		loginstr1="Hello";
		loginstr2="";
	}
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Qufenqi</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
		body{ width:1335px; border:0px solid #F00; }
		div{ border:0px solid gray;}
		a{ color:#000; text-decoration:none;}
		a:hover{ color:#B70D04;}


		.div_top1{ height:30px; background-color:#E8E8E8;}
		.top1_image{ float:left; }
	
		.top1_tableleft{ width:130px; height:28px; text-align:center; }
		.top1_font1{ font-size:10px; color:#000;}
		td a:hover{  color:#B70D04; text-decoration:underline; }
	
		.top1_div2{ float:right; }
		.top1_tableright{ width:420px;  height:28px; text-align:center; }	
	</style>
  </head>
  
  <body>
    <!--头部信息栏-->
	<div class="div_top1">
    <table  border="0" cellspacing="0">
    	<tr>
    	<td><img src="images/mainframe/MainFram01.JPG"  class="top1_image" /></td>
        <td>
        	<table class="top1_tableleft" border="0" cellspacing="0">
            	<tr><td width="50px"></td>
                <td class="top1_font1"><%=loginstr1 %></td>
                <td><a href="${pageContext.request.contextPath}/Myaccount.do?flag=Myaccount" class="top1_font1">${loginUser.name}<%=loginstr2 %></a></td>
            	</tr>
       		</table>
        </td>
        <td width="570px"></td>
        <td>
        	<table border=0 class="top1_tableright" border="0" cellspacing="0">
        	<tr>
              <td><a href="${pageContext.request.contextPath}/main.do?flag=showPage&where=mainframe" class="top1_font1">首页</a></td>
              <td><a href="${pageContext.request.contextPath}/main.do?flag=showPage&where=myShoppingCart" class="top1_font1">我的购物车</a></td>
              <td><a href="${pageContext.request.contextPath}/main.do?flag=showPage&where=Myaccount" class="top1_font1">我的账户</a></td>
              <td><a href="${pageContext.request.contextPath}/main.do?flag=showPage&where=Shop" class="top1_font1">商家中心</a></td>
              <td><a href="${pageContext.request.contextPath}/main.do?flag=showPage&where=yourService" class="top1_font1">客服中心</a></td>
              <td width="50px"></td>
            </tr>
        	</table>
        </td>
	</tr>
    </table>
    </div>
    
  </body>
</html>
