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
    
    	<!-- ***左侧导航栏***** -->
        <div class="top3_divleft">
        <!-- ****第一层table***** -->
        <table class="top3_lefttable" cellspacing="0" border="2">
          <tr height="40px"><td class="top3_tableTd1">我的应用</td></tr>
          <tr><td class="top3_tableTd2">
          <!-- ****第二层table***** -->
          	<table class="top3_table2" cellspacing="0">
            <tr><td>
            	<!-- ****第三层table***** -->
                <table  cellspacing="0">
                <tr><th colspan="2"><img src="${pageContext.request.contextPath}/images/shopCenter/shopPicture1.png"/>店铺管理</th></tr>
                <tr><td><a href="mainShopCenter.do?flag=showPage&where=employeeManager">员工管理</a></td><td><a href="#">店铺装饰</a></td></tr>
                </table>
            </td></tr>
            <tr><td><hr/></td></tr>
            
            <tr><td>
                <table>
                <tr><th colspan="2"><img src="${pageContext.request.contextPath}/images/shopCenter/shopPicture2.png"/>交易管理</th></tr>
                <tr><td><a href="#">已卖出的宝贝</a></td><td><a href="#">评价管理</a></td></tr>
                </table>
            </td></tr>
            <tr><td><hr/></td></tr>
            
            <tr><td>
                <table>
                <tr><th colspan="2"><img src="${pageContext.request.contextPath}/images/shopCenter/shopPicture3.png"/>物流管理</th></tr>
                <tr><td><a href="#">发货</a></td><td><a href="#">物流工具</a></td></tr>
                <tr><td><a href="#">物流服务</a></td><td><a href="#">我要寄快递</a></td></tr>
                </table>
            </td></tr>
            <tr><td><hr/></td></tr>
            
            <tr><td>
                <table>
                <tr><th colspan="2"><img src="${pageContext.request.contextPath}/images/shopCenter/shopPicture4.png"/>宝贝管理</th></tr>
                <tr><td><a href="managerProduct.do?flag=managerProduct&where=productManager">发布宝贝</a></td><td><a href="#">出售中的宝贝</a></td></tr>
                <tr><td><a href="managerProduct.do?flag=managerProduct&where=storageManager&what=1">仓库中的宝贝</a></td><td><a href="#">体验中心</a></td></tr>
                </table>
            </td></tr>
            <tr><td><hr/></td></tr>
            
            <tr><td>
                <table>
                <tr><th colspan="2"><img src="${pageContext.request.contextPath}/images/shopCenter/shopPicture5.png">客户服务</th></tr>
                <tr><td><a href="#">退款管理</a></td><td><a href="#">售后管理</a></td></tr>
                <tr><td><a href="#">举报管理</a></td><td><a href="#">咨询回复</a></td></tr>
                </table>
             </td></tr>
          	</table>
          <!-- ****第二层table结束***** -->
          </td></tr>
        </table>
        <!-- ****第一层table结束***** -->
        </div>
  
  </body>
</html>
