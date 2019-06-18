<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

    <style type="text/css">
		body,td,th 
		{
			font-size: 12px;
		}
		*{ font-family:Microsoft Yahei; }
		.STYLE5 
		{
		    color: #72AC27;
			font-size: 20pt;
		}
		.STYLE6 {color: #00FFFF}
		.STYLE7 {color: #FFFFFF}
	</style>
	
	<script type="text/javascript">
	    function logout()
	    {
	       var url="<%=path %>/login.jsp";
	       window.parent.location.href=url;
	    }
	</script>
  </head>
  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
      <table width="100%" height="126" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td style="background: url(<%=path %>/images/liuliu.jpg) repeat-x;" >
                <table>
                     <tr>
                        <td width="85%">
                            <div style="font-size: 28px;color: white;margin-left: 45px;">校园帮</div>
                        </td>
                        <td width="15%">
                            <div style="margin-top: 58px;">
                               <span>当前用户：管理员</span>
                               <span style="margin-left: 15px;"><a href="#" onclick="logout()"><font class="STYLE7">退出系统</font></a></span>
                            </div>
                        </td>
                     </tr>
                  </table>
            </td>
          </tr>
      </table>
</BODY>
</html>
