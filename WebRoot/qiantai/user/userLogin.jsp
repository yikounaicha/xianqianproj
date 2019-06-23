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
        function c123()
		{                                                                                         
		     if(document.formAdd.loginname.value=="")
			 {
			 	alert("请输入账号");
				document.formAdd.loginname.focus();
				return false;
			 }
			 if(document.formAdd.loginpw.value=="")
			 {
			 	alert("请输入密码");
				document.formAdd.loginpw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.formAdd.loginname.value,document.formAdd.loginpw.value,1,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("账号或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("登录成功");
		        window.location.href="<%=path %>/qiantai/default.jsp";
		    }
		}
    </script>
    
    
</head>
  

<body>


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
				              <form action="<%=path %>/" name="formAdd" method="post">
							     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" style="margin-bottom:8px">
									<tr align='center' height="45">
									    <td width="10%" align="right">
									                 账号：
									    </td>
									    <td width="90%" align="left">
									        <input type="text" name="loginname" size="50" style="height: 23px;"/>
									    </td>
									</tr>
									<tr align='center' height="45">
									    <td width="10%" align="right">
									         密码：
									    </td>
									    <td width="90%" align="left">
									        <input type="password" name="loginpw" size="50" style="height: 23px;"/>
									    </td>
									</tr>
									<tr align='center' height="45">
									    <td width="10%" align="right">
									        &nbsp;
									    </td>
									    <td width="90%" align="left">
									       <input type="button" value="提交" onclick="c123()" style="width: 60px;"/>&nbsp; 
									       <input type="reset" value="重置" style="width: 60px;"/>&nbsp;
									       <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
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
