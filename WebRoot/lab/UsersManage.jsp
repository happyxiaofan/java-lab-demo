<%@page import="entity.User"%>
<%@page import="biz.UserService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	UserService userService=new UserService();
	List userList=userService.getAllUser();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="lab/style.css">

  </head>
  
  <body>
    <script type="text/javascript">
		function del(userid){
			if(window.confirm("确定删除吗?")){
			window.location="userServlet?userid="+userid;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">课程管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="103"> 用户名 </td>
  		<td width="133"> 用户描述 </td>
  		<td width="87"> 操作 </td>
  	</tr>
    	<%
		if (userList != null) {
			for (int i = 0; i < userList.size(); i++) {
			User user=(User)userList.get(i);		
			int userid=user.getUserid();
			String username=user.getUsername();
			String userpwd=user.getUserpwd();
		%>							
		<tr>
			<td><%=username %></td>
			<td><%=userid %></td>
			<td>
				<a onClick="del(<%=userid%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
  </table>	
  </body>
</html>
