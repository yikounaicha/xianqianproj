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
	
	<script src="<%=path %>/js/global.js" type="text/javascript"></script>
    <script src="<%=path %>/js/head.js" type="text/javascript"></script>
    
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>


	<link rel="stylesheet" type="text/css" href="<%=path %>/css/main.css"/>
	<link rel="stylesheet" href="<%=path %>/css/qiantai.css" />
	<link rel="stylesheet" href="<%=path %>/css/head.css" />
	
	<script type="text/javascript" src="<%=path %>/js/jq.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		    $(".hdpic dd a").hover(function() {
		        $(this).find(".picshine").stop();
		        $(this).find(".picshine").css("background-position", "-235px 0");
		        $(this).find(".picshine").animate({
		            backgroundPosition: '235px 0'
		        },
		        500);
		        $(this).find(".pictitle").stop().animate({
		            left: '0px'
		        },
		        {
		            queue: false,
		            duration: 450
		        });
		    },
		    function() {
		        $(this).find(".pictitle").stop().animate({
		            left: '-1135px'
		        },
		        {
		            queue: false,
		            duration: 200
		        });
		    });
		});
	</script>
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
        function userLogout()
		{                                                                                         
			 document.getElementById("indicator").style.display="block";
			 loginService.userLogout(callback_logout);
		}
		
		function callback_logout(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("账号或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("成功退出系统");
		        window.location.href="<%=path %>/qiantai/default.jsp";
		    }
		}
		
        
        function guanlizhongxin()
		{
		    var targetWinUrl="<%=path %>/auser/index.jsp";
			/* var targetWinName="newWin";
			var features="width="+screen.width+" ,height="+screen.height+" ,toolbar=yes, top=0, left=0, menubar=yes, scrollbars=yes, resizable=yes,location=no, status=yes";
			var new_win=window.open(targetWinUrl,targetWinName,features); */
			window.location.href=targetWinUrl;
		}
    </script>
</head>
  

<body>


<div class="top">
	<div class="top1">
		<div class="top1_main">
		    <span class="dl" style="margin-left: 180px;">您好，欢迎光临！
		        <c:if test="${sessionScope.userType !=1}">
			        <a href="<%=path %>/qiantai/user/userLogin.jsp"> [用户登录]</a>  
			        <a href="<%=path %>/qiantai/user/userReg.jsp">[在线注册]</a>
		        </c:if>
		        
		        <c:if test="${sessionScope.userType ==1}">
		            <a href="#" style="margin-left: 8px;">欢迎你：${sessionScope.user.loginname}</a>  
		            <a href="#" style="margin-left: 8px;" onclick="userLogout()">退出系统</a>  
		            <a href="#" style="margin-left: 8px;" onclick="guanlizhongxin()">用户中心</a>
		            <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/> 
		        </c:if>
		    </span>
		    <span class="yh_zx" style="margin-right: 100px;">
		       <!-- <a href="#" onclick="guanlizhongxin()">用户中心</a>|  
		       <a href="#">5555</a>|
		       <a href="#">6666</a>|
		       <a href="#">3333</a>  -->
		    </span>
		</div>
	</div>
	<div class="top_logo">
	    <div class="logo">
	       <%-- <img src="<%=path %>/images/logo.jpg" width="338" height="113" /> --%>
	       <div style="font-size: 22px;margin-top: 40px;margin-left: 90px;">校园帮</div>
	    </div>
	    <div class="top_you" style="display: none">
	       <!-- <div class="ss_1">
		       <input name="key" type="text" id="key" value="请输入" size="30" onclick="if(value==defaultValue){value='';this.style.color='#898b8c'}" style="color:#999; line-height:26px;" class="ssk1" />
		       <input name="" value="11" type="button" class="button1"/>
	       </div> -->
	    </div>
    </div>
</div>



<!--导航开始-->
<div class="headNav">
  <div class="navCon w1020">
    <div class="navCon-cate fl navCon_on">
      <div class="navCon-cate-title"> <a href="<%=path %>/qiantai/default.jsp">系统首页</a></div>
    </div>
    <div class="navCon-menu fl">
      <ul>
        <li><a href="<%=path %>/xinwen?type=xinwenAll">新闻资讯</a></li>
        <li><a href="<%=path %>/gonggao?type=gonggaoAll">系统公告</a></li>
        <li><a href="<%=path %>/qiantai/renwu/renwuSea.jsp">任务查询</a></li>
      </ul>
    </div>
  </div>
</div>
<!--导航结束-->


</body>
</html>
