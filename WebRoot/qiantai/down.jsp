<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<div class="links">
     <div class="links_main">友情连接：
         <%-- <c:forEach items="${sessionScope.lianjieList }" var="lianjie" varStatus="ss">
             &nbsp;&nbsp;&nbsp;<a href="${lianjie.url }" target="_blank">${lianjie.name }</a>
         </c:forEach> --%> 
         <a href="https://finance.sina.com.cn/" target="_blank">新浪财经</a>
     </div>
</div>


<div class="banquan">
    Copyright © All Right Reserved  备案号： 豫ICP 450051256-1号&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="<%=path %>/login.jsp">系统后台</a>
</div>

</body>
</html>
