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
				                <table width="100%" border="0" cellpadding="5" cellspacing="5">
								     <%-- <tr>
								         <td align="left"><img src="<%=path %>/${requestScope.xinwen.fujian}" width="560" height="240" style="border:1px solid #ccc; padding:3px;"/></td>
								     </tr> --%>
								     <tr>
								         <td align="left">任务名称：${requestScope.xinwen.biaoti}</td>
								     </tr>
								     <tr>
								         <td align="left"><img src="<%=path %>/${requestScope.xinwen.fujian}" width="560" height="240" style="border:0px solid #ccc; padding:3px;"/></td>
								     </tr>
								     <tr>
								         <td align="left" style="line-height: 180%">任务要求：<c:out value="${requestScope.xinwen.jieshao}" escapeXml="false"></c:out></td>
								     </tr>
								     <tr>
								         <td align="left">
								            <c:forEach items="${requestScope.tupianList}" var="tupian" varStatus="ss">
							                   <p><img src="<%=path %>/${tupian.fujian }" alt="" width="715" height="300"/></p>
							                   <p style="line-height: 180%"><c:out value="${tupian.jieshao }" escapeXml="false"></c:out></p>
							                </c:forEach>
								         </td>
								     </tr>
								     <tr>
								         <td align="left">发布时间：${requestScope.xinwen.fabushi}</td>
								     </tr>
								  </table> 
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
