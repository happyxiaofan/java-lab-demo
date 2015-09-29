<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商学院网站后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="lab/style.css" rel="stylesheet">
	
  </head>
  
  <body>
	<%
	  if(request.getSession().getAttribute("userinfo") == null || request.getSession().getAttribute("userinfo").equals("")){
 	%>
  aaa
  <script type="text/javascript">
  //<![CDATA[
  alert("您还没有登陆!");window.navigate("/lab/AdminIndex.jsp");
 //]]>
  </script>
  <%}
  else{
  %>
  <span>欢迎</span>
  <%} %>
 		
   
  </body>
</html>
