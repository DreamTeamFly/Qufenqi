<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String name=request.getParameter("Cname");
	

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>注册成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	
		window.showModelessDialog("ok.jsp", "", "dialogWidth=320px; dialogHeight=200px;scroll =no;status=no;help:=no;resizable=no");
		
	
</script>
  </head>
  
  <body >
    注册成功 <%=name %> <br>
  </body>
</html>
