<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
           function renwuAdd()
           {
              var url="<%=path %>/admin/renwu/renwuAdd.jsp";
              window.location.href=url;
           }
           
           function renwuDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/renwu?type=renwuDel&id="+id;
               }
           }
           
           
           
           function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
           
           function over(picPath)
	       {
			  if (picPath=="")picPath="/img/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="444" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="10%">类别</td>
					<td width="15%">任务名称</td>
					<!-- <td width="10%">任务要求</td> -->
					
					<td width="18%">附件下载</td>
					<td width="7%">金币</td>
					<td width="10%">发布时间</td>
					<td width="7%">用户</td> 
					
					<td width="7%">状态</td>
					<td width="18%">接单用户</td>
					<td width="7%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.renwuList}" var="renwu" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						 ${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${renwu.catelog.name}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${renwu.mingcheng}
					</td>
					<%-- <td bgcolor="#FFFFFF" align="center">
						 ${renwu.jieshao}
					</td> --%>
					
					
					<td bgcolor="#FFFFFF" align="center">
					     <c:if test="${renwu.fujian !=''}">
					     ${renwu.fujian}&nbsp;
						 <a href="#" onclick="down1('${renwu.fujian}','${renwu.fujian}')" style="font-size: 12px;color: red">下载</a>
						 </c:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${renwu.qian}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${renwu.shijian}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${renwu.user.loginname}
					</td>
					
					
					<td bgcolor="#FFFFFF" align="center">
					    ${renwu.zt}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${renwu.jieUser.xingming}&nbsp;&nbsp;&nbsp;${renwu.jieUser.dianhua}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="renwuDel(${renwu.id})"/>
					</td> 
				</tr>
				</c:forEach>
			</table>
			
		    
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
				<TABLE id="tipTable" border="0" bgcolor="#ffffee">
					<TR align="center">
						<TD><img id="photo" src="" height="150" width="150"></TD>
					</TR>
				</TABLE>
			</div>
	</body>
</html>
