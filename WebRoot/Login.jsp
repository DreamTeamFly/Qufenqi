<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Welcome 趣分期</title>
    <link type="text/css" rel="stylesheet" href="css/Login.css" /> 
</head>
<script language="javascript">

	if(top.location != self.location)
	{
		top.location = self.location;
	}

	function link()
	{
		window.open("MyCar.html");
	}
	function check()
	{
		var phone=document.getElementById("phone").value
		var password=document.getElementById("password").value

		if(phone == "" || phone == "请输入手机号码" )//手机号码为空
		{
			//聚焦于手机号码输入框
			
				document.getElementById("phone").focus();
		}
		//密码为空
		else if( password == "" || password == "请输入密码"){
			//聚焦于密码框
			document.getElementById("password").focus();
		}
		else
		{
			var regexp=new RegExp("^[1]{1}[3,4,5,8]{1}[0-9]{9}$")
		  	if(phone.length>10)
		  	{
				if(phone.length==11)
		  		{
		  			if(regexp.test(phone))
		  			{ 
						//alert("成功"+", "+phone+"  "+password);
						//window.location.href="/MyCar/controlOne?code=check&userPhone='"+phone+"'&userPassword='"+password+"'";
						//document.getElementById("form1").action="/MyCar/controlOne?code=check&loginUser=user" ;
						document.getElementById("form1").submit();
					}
		  			else
		  			{   alert("账号含有非法字符");
						document.getElementById("phonr").focus(); 
					}
				}
				if(phone.length==18)
				{
					//document.getElementById("form1").action="/MyCar/controlOne?code=checkManager&loginUser=manager" ;
					document.getElementById("form1").submit();
				}
		  	}
			else{
				alert("手机号码格式错误！！！");
			}
		}
	}
</script>
<body>
<div class="top1_div1">
	<div class="top1_div2">
    	<div class="top1_font1"><img src="images/login/logo.jpg" style="float:left;" />欢迎您</div>
        <div class="top1_font2">
        			<a href="${pageContext.request.contextPath}/Register/Register.jsp">免费注册</a></div>
    </div>
	<div class="top2_div3">
	<!-- 
		<form name="form1" method="post" id="form1" action="/MyCar/controlOne?code=check" >
	 -->
	 <form name="form1" method="post" id="form1" action="${pageContext.request.contextPath}/login.do?flag=login">
    <table border="0" class="top2_table">
    	<tr>
        	<td colspan="2" class="top2_td1">欢迎登陆</td>
        </tr>
        <tr><td class="top2_td2"></td></tr>
    	<tr>
    		<td class="top2_td3"><img src="images/login/login-1.JPG" /></td>
        	<td><input type="text" name="account" id="phone" class="top2_text1"
            		value="请输入手机号码" onfocus="this.value=''"
                    onblur="if(value==''){value='请输入手机号码'}" /></td>
        </tr>
        <tr>
        	<td><img src="images/login/login-2.JPG" /></td>
            <td><input type="password" name="pwd" id="password" 
            	class="top2_text1" value="请输入密码" onfocus="this.value=''"
                onblur="if(value==''){value='请输入密码'}" /></td>
        </tr>
        <tr><td class="top2_td2"></td></tr>
        <tr>
        	<td colspan="2" class="top2_td3">
            <input type="button" value="登陆" onclick="check()" class="top2_text3"  /></td>
        </tr>
        <tr><td class="top2_td2"></td></tr>
    </table>
    </form>
	</div>
    <div>
    	<table >
        <tr><td class="bottom_td">Welcome 趣分期</td></tr>
        <tr><td class="bottom_td">趣分期——让您轻轻松松买单</td></tr>
        <tr><td class="bottom_td">地址：南昌市红谷滩新区丰和南大道696号&nbsp;&nbsp;&nbsp;
        	邮箱：2995861608@163.com&nbsp;&nbsp;&nbsp;
            传真：010-487864867</td></tr>
        </table>
    
    </div>
</div>
</body>
</html>