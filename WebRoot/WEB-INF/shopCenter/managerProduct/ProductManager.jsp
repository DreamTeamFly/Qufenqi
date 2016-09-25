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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ProductManager.css">
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
       		<div class="top3right_div1">
        	<table class="top3right_table" >
        	<tr>
        		<td><select name="select1">
        			<option value=""> -- 请选择一级分类 -- </option>
        			<option value="外套">外套</option>
        			<option value="内衣">内衣</option>
        			<option value="长裤">长裤</option>
        			<option value="短裤">短裤</option>
        			<option value="上衣">上衣</option>
        			<option value="运动服">运动服</option>
        			<option value="袜子">袜子</option>
        			<option value="其他">其他</option>
        			</select>
        		</td>
        		<td><select name="select2">
        			<option value=""> -- 请选择二级分类 -- </option>
        			<option value="棉布">棉布</option>
        			<option value="麻布">牛仔</option>
        			<option value="丝绸">丝绸</option>
        			<option value="短裤">呢绒</option>
        			<option value="皮革">皮革</option>
        			<option value="涤纶">涤纶</option>
        			<option value="棉纶">棉纶</option>
        			<option value="其他">其他</option>
        			</select>
        		</td>
        		<td><select name="select3">
        			<option value=""> -- 请选择三级分类 -- </option>
        			<option value="外套">男装</option>
        			<option value="内衣">女装</option>
        			<option value="长裤">儿童装</option>
        			<option value="其他">其他</option>
        			</select>
        		</td>
        	</tr>
        	<tr height="200px"><td colspan="3"></td></tr>
        	</table>
        	</div>
        	
        	<div class="top3right_div2">
        		<input type="button" name="ok" id="ok" value="我已阅读以下规则，现在发布宝贝" />
        	</div>
        	
        	<div class="top3right_div3">
        		<table>
        		<tr height="30px"><td>
        			<div class="top3right_div3_1">
        				<div><span>发布须知：</span>
        					趣分期禁止发布侵犯他人知识产权的商品，请确认该商品符合知识产权保护的规定
        				</div>
        				<hr />
        			</div>
        		</td></tr>
        		<tr><th><span>商品发布规则</span></th></tr>
        		<tr><td>
        			<div class="top3right_div3_2">
        				<textarea rows="20" cols="120">发布规则。。。。。</textarea>
        				
        		</td></tr>
        		</table>
        	</div>	
        </div>
   </div>
    
    <!-- 尾部 -->
  	<div class="top5"><jsp:include page="../jsp/shopCenterBottomLine.jsp"></jsp:include></div>
  	
<!-- 中部正文结束 -->  	
</div>
  	
</body>
</html>
