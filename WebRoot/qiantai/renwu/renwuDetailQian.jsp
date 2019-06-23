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
        function down1(fujianPath,fujianYuashiMing)
        {
                    var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
			        url=encodeURI(url); 
	                url=encodeURI(url); 
	                window.open(url,"_self");
        }
        
        
        function jiedanAdd(renwu_id,user_id)
        {
               <c:if test="${sessionScope.userType!=1}">
                   alert("请先登录");
                   return false;
               </c:if>
               
               var denglu_user_id="${sessionScope.user.id}";
               if(denglu_user_id==user_id)
	           {
	                alert("不能接自己发布的任务");
	                return false;
	           }
            
	           var strUrl = "<%=path %>/renwu?type=jiedanAdd&id="+renwu_id;
	           window.location.href=strUrl;
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
				                <table width="100%" border="0" cellpadding="12" cellspacing="12">
								     <%-- <tr>
								         <td align="left"><img src="<%=path %>/${requestScope.renwu.fujian}" width="560" height="240" style="border:1px solid #ccc; padding:3px;"/></td>
								     </tr> --%>
								     <tr>
								         <td align="left">任务名称：${requestScope.renwu.mingcheng}</td>
								     </tr>
								     <tr>
								         <td align="left" style="line-height: 180%">任务要求：<c:out value="${requestScope.renwu.jieshao}" escapeXml="false"></c:out></td>
								     </tr>
								     <tr>
								         <td align="left">
								             <c:if test="${requestScope.renwu.fujian !=''}">
												     附件：${requestScope.renwu.fujian}&nbsp;&nbsp;<a href="#" onclick="down1('${requestScope.renwu.fujian}','${requestScope.renwu.fujian}')" style="font-size: 12px;color: red">下载</a>
											 </c:if>
								         </td>
								     </tr>
								     <tr>
								         <td align="left">任务金币：${requestScope.renwu.qian}</td>
								     </tr>
								     <tr>
								         <td align="left">发布时间：${requestScope.renwu.shijian}</td>
								     </tr>
								     <tr>
								         <td align="left">
								                                      发布用户：${requestScope.renwu.user.loginname}
								         </td>
								     </tr>
								     <tr>
								         <td align="left">
								                                     联系电话：${requestScope.renwu.user.dianhua}
								         </td>
								     </tr>
								     <tr>
								         <td align="left">
								              <input type="button" value="我要接单" style="width: 123px;" onclick="jiedanAdd('${requestScope.renwu.id}','${requestScope.renwu.user_id}')"/>                        
								         </td>
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
