<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<STYLE type=text/css>
	    .style2 
	    {
			COLOR: #003366
		}
		.style3 {
			COLOR: #ffffff
		}
		.style4 {
			FONT-WEIGHT: bold; COLOR: #3d7acd
		}
		BODY {
			BACKGROUND-COLOR: #417bc9
		}
		.STYLE5 {
			FONT-WEIGHT: bold; COLOR: #ffffff
		}
		.STYLE6 {
			COLOR: #ffffff
		}
		
		.back_southidc {
			BACKGROUND-IMAGE: url(../image/titlebg.gif); COLOR: #000000
		}
		.table_southidc {
			BACKGROUND-COLOR: #a4b6d7
		}
		.td_southidc {
			BACKGROUND-COLOR: #f2f8ff
		}
		.tr_southidc {
			BACKGROUND-COLOR: #ecf5ff
		}
		.t1 {
			FONT: 12px 宋体; COLOR: #000000
		}
		.t2 {
			FONT: 12px 宋体; COLOR: #ffffff
		}
		.t3 {
			FONT: 12px 宋体; COLOR: #ffff00
		}
		.t4 {
			FONT: 12px 宋体; COLOR: #800000
		}
		.t5 {
			FONT: 12px 宋体; COLOR: #191970
		}
		.weiqun:hover {
			COLOR: #ffffff; FONT-FAMILY: "宋体"; BACKGROUND-COLOR: #cccccc; TEXT-DECORATION: underline; Font-unline: yes
		}
		TD {
			FONT-SIZE: 12px
		}
		A:link {
			COLOR: #000000; TEXT-DECORATION: none
		}
		A:active {
			COLOR: #000000; TEXT-DECORATION: none
		}
		A:visited {
			COLOR: #000000; TEXT-DECORATION: none
		}
    </STYLE>
  </head>
  
  <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
		<script language="javascript">
		function cc()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
	    </script>
  
<BODY>
<br><br><br><br><br><br><br><br>
<TABLE height=252 cellSpacing=0 cellPadding=0 width=432 align=center border=0>
  <TR>
    <TD align=middle background=<%=path %>/images/Login_Top.jpg height=50>
      <TABLE cellSpacing=0 cellPadding=0 width=300 border=0>
        <TR>
          <TD vAlign=bottom align=middle height=18>
             <SPAN class=STYLE5 style="font-size: 20px;">校园帮</SPAN>
          </TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
  <TR>
    <TD align=middle background=<%=path %>/images/Login_BG.gif>
       <table>
            <tr>
               <td width="100">
                  <IMG height=130 alt=2 src="<%=path %>/images/Login_TT.jpg" width=132>
               </td>
               <td width="260" valign="top">
                  <form action="" name="ThisForm" method="post">
                  <table align="left" border="0" cellpadding="1" cellspacing="1">
						<tr align='center'>
							<td style="width: 40px;" align="right">
								账号：										    
							</td>
							<td align="left">
								<input name="userName" type="text" style="width: 150px;"/>
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 40px;" align="right">
								密码：										    
							</td>
							<td align="left">
								<input name="userPw" type="text" style="width: 150px;"/>
							</td>
						</tr>
						<tr align='center' style="display: none">
							<td style="width: 40px;" align="right">
								类型：										    
							</td>
							<td align="left">
								<select name="userType" style="width: 150px;">
								    <option value="0">0</option>
								    <option value="1">1</option>
								    <option value="2">2</option>
								</select>
							</td>
						</tr>
						<tr align='center' height="50">
							<td style="width: 40px;" align="right">
																		    
							</td>
							<td align="left">
								<input type="button" value="登录" style="width: 60px;" onclick="cc()"/>&nbsp; 
	                            <input type="reset" value="重置" style="width: 60px;"/>&nbsp;	
	                            <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
							</td>
						</tr>
					</table>
					</form>
               </td>
            </tr>
        </table>
    </TD>
  </TR>
  <TR>
    <TD align=middle background=<%=path %>/images/Login_Down.jpg height=30></TD>
  </TR>
</TABLE>
</BODY>
</html>
