<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验室申请</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body { font-family:Verdana; font-size:14px; margin:0;}
#container {margin:0 auto;}
#top {margin-bottom:0px;}
#mainContent { margin-bottom:0px;}
#sidebar { float:left; }
#content { float:left;} 
</style>
 </head>
  </head>
  
  <body>
    <div id="container">
 	 <div id="top"> <iframe src="lab/top.htm" width="100%" height="70px" frameborder="0" scrolling="no"></iframe></div>
  	<div id="mainContent">
  	  <div id="sidebar"><iframe src="lab/left2.htm" width="200px" height="1000px" frameborder="0" scrolling="no"></iframe></div>
   	 <div id="content"><iframe name="mainFrame" src="lab/default.htm" width="800px" height="1000px" frameborder="0" scrolling="no"></iframe></div>
  	</div>
  </div>
    
  </body>
</html>
