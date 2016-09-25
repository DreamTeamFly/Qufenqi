<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>仓库中的宝贝 查询结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
  
<body>

    <table>
    
    <c:forEach items="${StorageProduct}" var="op">
	    <tr><th>名称</th><th>类型</th><th>材质</th><th>适用人群</th><th>价格</th><th>状态</th></tr>
	    <tr><td>${op.name}</td>
	    	<td>${op.type}</td>
	    	<td>${op.materia}</td>
	    	<td>${op.suitable}</td>
	    	<td>${op.price}</td>
	    	<td>${op.state}</td>
	    </tr>
    </c:forEach>
    
    </table>
    
</body>
  
 </html>
