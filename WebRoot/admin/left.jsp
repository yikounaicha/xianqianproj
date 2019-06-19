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
		                        <span class="SystemLeft STYLE2"><strong>修改登陆密码</strong></span>
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
						         <a href="<%=path %>/admin/userinfo/userPw.jsp" target="mainFrame">修改登陆密码</a>
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
	              <tr onClick="new Element.toggle('submenu3')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>任务分类管理</strong></span>
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
						         <a href="<%=path %>/catelog?type=catelogMana" target="mainFrame">任务分类管理</a>
						      </td>
						    </tr>
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/admin/catelog/catelogAdd.jsp" target="mainFrame">添加任务分类</a>
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
	              <tr onClick="new Element.toggle('submenu4')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>注册用户管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu4">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/user?type=userMana" target="mainFrame">注册用户管理</a>
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
	              <tr onClick="new Element.toggle('submenu5')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>任务信息管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu5">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/renwu?type=renwuMana" target="mainFrame">任务信息管理</a>
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
	              <tr onClick="new Element.toggle('submenu6')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>系统公告管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu6">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/gonggao?type=gonggaoMana" target="mainFrame">系统公告管理</a>
						      </td>
						    </tr>
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/admin/gonggao/gonggaoAdd.jsp" target="mainFrame">发布系统公告</a>
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
	              <tr onClick="new Element.toggle('submenu7')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>新闻资讯管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu7">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/xinwen?type=xinwenMana" target="mainFrame">新闻资讯管理</a>
						      </td>
						    </tr>
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/admin/xinwen/xinwenAdd.jsp" target="mainFrame">添加新闻资讯</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              
              <%-- <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu8')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>1111111</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu8">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/userMana.action" target="mainFrame">11111111</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 --> --%>
              
              
            </table>
	    </td>
	</tr>
</table>
</body>
















</html>
