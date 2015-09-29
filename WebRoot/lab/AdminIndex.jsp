<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="logincheck.jsp" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<LINK href="lab/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY>
<form name="Form1" method="post" action="AdminLoginServlet" id="Form1">

			<TABLE class="grid" id="Table1" style="Z-INDEX: 101; LEFT: 450px; POSITION: absolute; TOP: 180px"
				cellSpacing="1" cellPadding="1" width="360" border="1">
				<TR>
					<TD class="controlType" style="HEIGHT: 16px" colSpan="2">管理员登陆</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 50px; HEIGHT: 29px">用户名:</TD>
					<TD style="HEIGHT: 29px">
						<input name="username" type="text" id="txtName" class="InPut_bg" style="height:24px;width:158px;" /></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 50px">密码:</TD>
					<TD>
						<input name="userpwd" type="password" id="txtPassword" class="InPut_bg" style="height:24px;width:160px;" /></TD>
				</TR>
				<TR>
					<TD colSpan="2"><FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" name="Login" value="登录" id="Login" class="input_bg" style="width:48px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</FONT></TD>
				</TR>
			</TABLE>
		</form>
	</BODY>
</HTML>

