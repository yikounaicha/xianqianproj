<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
              function check()
              {
                   if( document.form1.loginname.value=="")
	               {
	                   alert("请输入账号");
	                   return false;
		           }
	               if( document.form1.loginpw.value=="")
	               {
	                   alert("请输入密码");
	                   return false;
	               }
	               if( document.form1.xingming.value=="")
	               {
	                   alert("请输入姓名");
	                   return false;
	               }
	               
	               document.form1.submit();
              }
              
    </script>
    
    
</head>
  

<body onload="init()">


<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>





<div class="con_sy">
	<table border="0">
	    <tr>
	        <td align="left" valign="top">
	            <div style="width:900px;margin-top: 1px;">
				      <%-- <div style="height:24px;background:url(<%=path %>/images/left111.jpg);">
				         <span style="float:left;font-family: 微软雅黑;font-size: 12px;margin-top: 3px;margin-left: 10px;">111</span>
				      </div> --%>
				      <div style="height: 100%;border:1px solid #CCCCCC;">
				          <div style="padding-top: 8px;padding-left: 8px;">
				              <form action="<%=path %>/user?type=userReg" name="form1" method="post">
							       <table width="100%" align="center" border="0" cellpadding="4" cellspacing="1">
										<tr align='center' height="46">
										    <td width="10%" align="right">
										         账号：
										    </td>
										    <td width="90%" align="left">
										        <input type="text" name="loginname" style="width: 300px;" style="height: 23px;"/>
										    </td>
										</tr>
										<tr align='center' height="46">
										    <td width="10%" align="right">
										         密码：
										    </td>
										    <td width="90%" align="left">
										        <input type="password" name="loginpw" style="width: 300px;" value="000000" style="height: 23px;"/>(默认：000000)
										    </td>
										</tr>
										<tr align='center' height="46">
										    <td width="10%" align="right">
										        姓名：
										    </td>
										    <td width="90%" align="left">
										         <input type="text" name="xingming" style="width: 300px;" style="height: 23px;"/>
										    </td>
										</tr>
										<tr align='center' height="46">
										    <td width="10%" align="right">
										        性别：
										    </td>
										    <td width="90%" align="left">
										         <input type="radio" name="xingbie" value="男" checked="checked"/>男
										         &nbsp;&nbsp;
										         <input type="radio" name="xingbie" value="女"/>女
										         
										    </td>
										</tr>
										<tr align='center' height="46">
										    <td width="10%" align="right">
										        年龄：
										    </td>
										    <td width="90%" align="left">
										         <input type="text" name="nianling" style="width: 300px;" style="height: 23px;" value="20" onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
										    </td>
										</tr>
										<tr align='center' height="46">
										    <td width="10%" align="right">
										        住址：
										    </td>
										    <td width="90%" align="left">
										         <input type="text" name="zhuzhi" style="width: 480px;" style="height: 23px;"/>
										    </td>
										</tr>
										
										<tr align='center' height="46">
										    <td width="10%" align="right">
										        电话：
										    </td>
										    <td width="90%" align="left">
										         <input type="text" name="dianhua" style="width: 300px;" style="height: 23px;"/>
										    </td>
										</tr>
										<tr align='center' height="46">
										    <td width="10%" align="right">
										        &nbsp;
										    </td>
										    <td width="90%" align="left">
										       <input type="button" value="提交" onclick="check()" style="width: 70px;"/>&nbsp; 
										       <input type="reset" value="重置" style="width: 70px;"/>&nbsp;
										    </td>
										</tr>
								 </table>
						      </form> 
				          </div>
				      </div>
				 </div>
				 
	        </td>
	        <td align="left" valign="top">
		        <jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include>
	        </td>
	    </tr>
	</table>
</div>












<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>




</body>
</html>
