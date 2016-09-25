<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <title>个人注册</title>
    <link type="text/css" rel="stylesheet" href="Register.css" />
</head>
<style type="text/css">
	.td1{ width:100px; height:30px; text-align:center; line-height:30px;}
</style>

<script language="javascript">
var flag=false
var checkNum="";

function check()
{
	var userName=document.getElementById("name").value
	
	var Sex=document.getElementsByName("sex")
	var userAge=document.getElementById("age").value
	var userEmail=document.getElementById("email").value
	var userPhone=document.getElementById("phone").value
	var userPassword=document.getElementById("pwd").value
	var userPassword2=document.getElementById("pwd2").value
	var checkNumber_user=document.getElementById("checkNumber_user").value
	
	var userSex=""
	
	//校验性别
	for(var i=0;i<Sex.length;i++)
	{
		if(Sex.item(i).checked)
			userSex=Sex.item(i).getAttribute("value");
	}
	
	/*alert(""+userName+","+ userSex+","+ userAge+","+userEmail+","+ userPhone+","+userPassword+","+userPassword2 );
	*/
	
	var regEmail=/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
	var regPhone=new RegExp("^[1]{1}[3,4,5,8]{1}[0-9]{9}$");
		
	if(userName=="" || userSex=="" || userAge=="" || userEmail=="" || userPhone=="" || userPassword=="" || userPassword2=="" )
	{ alert("信息不能为空"); }
		
		/*校验年龄*/
	else if(userAge<18 || userAge>80)
	{ alert("Sorry! 您的年龄无法在次进行注册"); 
			document.getElementById("age").focus();
	}
		
		/*检验油箱*/
	else if(!regEmail.test(userEmail))
	{ alert("油箱格式错误，请重新填写"); 
			document.getElementById("email").focus();
	}
		
		/*校验手机号码*/
	else if(userPhone.length != 11 || !regPhone.test(userPhone))
	{ alert("手机号码格式错误，请再次确认"); 
			document.getElementById("phone").focus();
	}
	/*校验验证码*/
	else if(!(checkNum == checkNumber_user ))
	{
		alert("验证码错误，请重新填写");
		veri();
		document.getElementById("checkNumber_user").focus();
	}
		
		/*校验密码*/
	else if(userPassword != userPassword2)
	{ alert("密码不匹配，请重新填写"); 
		document.getElementById("pwd2").focus(); 
	}
		
		/*验证通过*/
	else
	{
		//alert("校验成功");
		if (window.confirm("确认")) 
		{
			 /*提交注册信息*/
			document.form2.submit();
			//document.getElementById("form2").submit();
			document.form2.reset(); 
		}
		else	
			return false;
			
	}
	
}
function veri()
{
	var sourceNum="0123456789";
	var singleNum="";
	var index=0;
	for(var i=0;i<8;i++)
	{
			index=(Math.random()*100)%20;
			singleNum=sourceNum.substring(index,index+1);
			checkNum+=singleNum;
			i++;
			if( checkNum.length > 5 )
			{
					checkNum="";
					i=0;
			}
	}	
	
	document.form2.chexkNumber.value=checkNum;
}


	 
</script>

<body onload="veri()">
<div class="div_top1">
    	<img src="../images/MainFram01.JPG" style="margin-left:70px;" />
        <div class="div_top11">欢迎注册&nbsp;|
        	<a href="../Login.jsp" class="top1_font1">返回</a>
        </div>
    </div>
    
  <div class="div_middle">
  <form name="form2" method="post" id="form2" action="${pageContext.request.contextPath}/customer.do?flag=register"> 
  	<table border="0" cellspacing="10" class="tbble_top2" >
    	<tr class="top2_tr1">
        	<td width="300px">手机验证</td>
            <td width="300px">基本信息</td>
            <td width="300px">邮箱密码</td>
        </tr>
        <tr class="top2_tr2" >
        <!--手机验证-->
        	<td>
            	<table class="top2_table1">
                <tr><td>手机号码：</td><td><input type="text" name="phone" id="phone" /></td></tr>
                <tr><td>验 证 码：</td><td><input type="text" name="checkNumber_user" id="checkNumber_user" /></td></tr>
                <tr><td></td>
                	<td><input type="text" name="checkNumber" id="chexkNumber"  size="4" readonly="readonly" value="" />
                		<input type="button" value="换一个" onclick="veri()"  id="chexkNumber2" />
                	</td></tr>
                </table>
            </td>
        <!--基本信息-->
            <td>
            	<table class="top2_table1" >
                <tr><td width="100px">姓名：</td><td><input type="text" name="name" id="name" style="width:180px" /></td></tr>
                <tr><td>年龄：</td><td><input type="text" name="age" id="age" style="width:180px" /></td></tr>
                <tr><td>性别：</td><td>
                	<input type="radio" name="sex" id="Sex_input" value="1" checked="checked"  />男
            		<input type="radio" name="sex" id="Sex_input" value="2" />女</td>
                </tr>
                </table>
            </td>
        <!--邮箱密码-->
            <td>
            	<table class="top2_table1">
                <tr><td width="80px">邮&ensp;&nbsp;箱：</td>
        			<td><input type="email" name="email" id="email" /></td></tr>
                <tr><td>密&ensp;&nbsp;码：</td>
        			<td><input type="password" name="pwd" id="pwd" /></td></tr>
                <tr><td>确认密码：</td>
        			<td><input type="password" name="pwd2" id="pwd2"/></td></tr>
                </table>
            </td>
        </tr>
        <tr class="top2_tr3">
        	<td><input type="button" value="下一步" onclick="check()" /></td>
            <td><input type="button" value="下一步" onclick="check()" /></td>
            <td><input type="button" value="OK" onclick="check()" /></td></tr>
    </table>
	</form>
	
</body>
</html>
