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
	
	<script type="text/javascript" src="<%=path %>/js/lunbo.js"></script> 
	
	<style rel="stylesheet" type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;} 
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
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
	            <%-- <div style="width:900px;margin-top: 1px;">
				      <div style="height:24px;background:url(<%=path %>/images/left111.jpg);">
				         <span style="float:left;font-family: 微软雅黑;font-size: 12px;margin-top: 3px;margin-left: 10px;">111</span>
				      </div>
				      <div style="height: 200px;border:1px solid #CCCCCC;border-top: white;">
				          <div style="padding-top: 8px;padding-left: 8px;">
				              dfdf
				          </div>
				      </div>
				 </div> --%>
				 <div style="width:900px;margin-top: 1px;">
				    <div id="imgADPlayer" style="margin: 0px;"></div>
					<script>
						PImgPlayer.addItem( "test1", "#", "/zbwz/images/111.jpg");
						PImgPlayer.addItem( "test2", "#", "/zbwz/images/222.jpg");
						PImgPlayer.init( "imgADPlayer", 900, 300 );
					</script>
				 </div>
				 <div style="width:900px;margin-top: 10px;">
				      <div style="height:24px;background:url(<%=path %>/images/left111.jpg);">
				         <span style="float:left;font-family: 微软雅黑;font-size: 12px;margin-top: 3px;margin-left: 10px;">最新发布</span>
				      </div>
				      <div style="height: 100%;border:1px solid #CCCCCC;border-top: white;">
				          <div style="padding-top: 5px;padding-left: 5px;padding-right: 5px;">
				              <%-- <TABLE border=0 >
									              <TR>
									                  <c:forEach items="${requestScope.zuopinList}" var="zuopin" varStatus="sta">
									                    <c:if test="${sta.index%3==0}">
									                       </tr><tr>
									                    </c:if>
										                <TD>
										                  <TABLE>
										                    <TR>
										                      <TD style="border:1px solid  #CCCCCC;">
										                           <center>
										                              <A href="<%=path %>/zuopinDetailQian.action?id=${zuopin.id}">
										                              <IMG border=0 src="<%=path %>/${zuopin.fujian}" width=260 height=260 style="margin: 15px;"></A>
										                           </center>
										                           <center style="margin-top: -13px;">
										                              <A href="<%=path %>/zuopinDetailQian.action?id=${zuopin.id}">${zuopin.mingcheng}</A>
										                           <center>
										                      </TD>
										                    </TR>
										                  </TABLE>
										                </TD>
									                </c:forEach>
									              </TR>
								</TABLE><br/> --%>
				                <c:forEach items="${requestScope.renwuList}" var="renwu">
								   <div class="c1-bline" style="padding:11px 0px;">
								       <div class="f-left">
									     <img src="<%=path %>/images/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
								             <a href="<%=path %>/renwu?type=renwuDetailQian&id=${renwu.id}">${renwu.mingcheng}</a>
								       </div>
								      <div class="f-right">${renwu.shijian}</div>
								      <div class="clear"></div>
								  </div>
								</c:forEach><br/><br/>
				          </div>
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
