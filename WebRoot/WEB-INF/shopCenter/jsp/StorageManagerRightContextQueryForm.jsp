<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>仓库中的宝贝 查询宝贝</title>
    <!-- 异步刷新 -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/StorageManager.css">

  </head>
  
  <body>
    <form method="post" action="">
        		<!-- 里层table -->
        		<table class="top3_table_3" >
        		<tr><td>商品名称：</td>
        			<td><input type="text" id="name" name="name" /></td>
        			<td width="80px"> </td>
        			<td>价格：</td>
        			<td><span>
        				<input type="text" id="price1" name="price1" />
        				到 <input type="text" id="price2" name="price2" />
        				</span>
        			</td>
        		</tr>
        		<tr><td>下架状态：</td>
        			<td><select name="state">
        					<option value="">全部下架</option>
        					<option value="售完下架"> 售完下架 </option>
        					<option value="我下架的"> 我下架的 </option>
        					<option value="从未上架"> 从未上架 </option>
        					<option value="被下架的违规商品"> 被下架的违规商品 </option>
        				</select>
        			</td>
        			<td width="80px"> </td>
        			<td>商品销量：</td>
        			<td><span>
        				<input type="text" id="salesNumber1" name="salesNumber1" />
        				到 <input type="text" id="salesNumber2" name="salesNumber2" />
        				</span>
        			</td>
        		</tr>
        		<tr><td>店铺中分类：</td>
        			<td><select name="shoptype">
        					<option value=""></option>
        				</select></td>
        			<td width="80px"> </td>
        			<td>商品类目：</td>
        			<td><select name="type">
        					<option value=""></option>
        					<option value="售完下架"> 上衣 </option>
        					<option value="我下架的"> 鞋子 </option>
        					<option value="从未上架"> 裤子 </option>
        					<option value="被下架的违规商品"> 外套 </option>
        				</select>
        			</td>
        		</tr>
        		<tr><td></td><td></td><td></td><td></td>
        			<td><div><input type="button" value="搜索" /></div></td>
        		</tr>
        		<!-- 里层table -->
        		</table>
        		</form>
  </body>
</html>
