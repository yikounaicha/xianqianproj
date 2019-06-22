<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    <script src="<%=path %>/js/prototype.js"></script>
	
	<style type="text/css">
		body,td,th 
		{
			font-size: 12px;
		}
		.STYLE1 {color: #F33532}
		*{ font-family:Microsoft Yahei; }
		body 
		{
			background-color: #F7F7F7;
			background-image: url(<%=path %>/images/left_02_01_02.gif);
		}
		.STYLE2 {color: #FFFFFF}
	</style>
    
  </head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="200" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td background="<%=path %>/images/left_02_01_02.gif">
			<table width="200"  border="0" cellpadding="0" cellspacing="0" background="<%=path %>/images/left_02_01_02.gif">
	          <!-- 1111 -->
	          <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu1')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>修改我的信息</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu1">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/admin/userinfo/userinfo.jsp"" target="mainFrame">修改我的信息</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 1111 -->
              
              
              
              
              
              
              
              
              
              
              
              
              <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu2')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>我的任务信息</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu2">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/renwu?type=renwuMine" target="mainFrame">我的任务信息</a>
						      </td>
						    </tr>
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/admin/renwu/renwuAdd.jsp" target="mainFrame">发布任务信息</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu3')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>我的接单信息</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu3">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/renwu?type=jiedanMine" target="mainFrame">我的接单信息</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              
              
            </table>
	    </td>
	</tr>
</table>
</body>
















</html>
