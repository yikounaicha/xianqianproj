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
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;} 
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>

    <script type="text/javascript">
        function check1()
	    {
	        if(document.form1.neirong.value=="")
	        {
	            alert("请输入内容");
	            return false;
	        }
	        if(document.form1.xingming.value=="")
	        {
	            alert("请输入您的姓名");
	            return false;
	        }
	        if(document.form1.dianhua.value=="")
	        {
	            alert("请输入电话");
	            return false;
	        }
	        document.form1.submit();
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
				          <div style="padding-top: 10px;padding-left: 10px;padding-right: 10px;">
				                <form action="<%=path %>/liuyan?type=liuyanAdd" name="form1" method="post">
									<table width="98%" border="0" align="left" cellpadding="0" cellspacing="1">
										<tr>
											<td height="46" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
												留言内容：
											</td>
											<td bgcolor="#FFFFFF">
												&nbsp;
												<input type="text" name="neirong" style="width: 520px;height: 25px;"/>
											</td>
										</tr>
										<tr>
											<td height="46" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
												您的姓名：
											</td>
											<td bgcolor="#FFFFFF">
												&nbsp;
												<input type="text" name="xingming" style="width: 366px;height: 25px;"/>
											</td>
										</tr>
										<tr>
											<td height="46" align="right" bgcolor="#F9F9F9" style="font-size: 12px;">
												联系电话：
											</td>
											<td bgcolor="#FFFFFF">
												&nbsp;
												<input type="text" name="dianhua" style="width: 366px;height: 25px;"/>
											</td>
										</tr>
										<tr>
											<td height="46" align="right" bgcolor="#F9F9F9">
												&nbsp;
											</td>
											<td bgcolor="#FFFFFF">
												&nbsp;
												<input type="button" value="提交" onclick="check1();" style="width: 88px;"/>
												<input type="hidden" name="jineng_id" value="<%=request.getParameter("jineng_id") %>"/>
												<input type="hidden" name="to_user_id" value="<%=request.getParameter("to_user_id") %>"/>
												<input type="reset" value="重置" style="width: 88px;"/>
											</td>
										</tr>
									</table>
							      </form>
				                <br/><br/>
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
