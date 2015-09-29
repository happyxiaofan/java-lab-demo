<%@page import="entity.Require"%>
<%@page import="biz.RequireService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	RequireService requireService=new RequireService();
	List requireList=requireService.getAllRequire();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验要求</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="vs_defaultClientScript" content="JavaScript">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<LINK href="lab/style.css" type="text/css" rel="stylesheet">
</head>
  
  <body>
  <script type="text/javascript">
		function del(reqno){
			if(window.confirm("确定删除吗?")){
			window.location="RequireServlet?reqno="+reqno;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">实验要求管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="103"> 实验要求编号  </td>
  		<td width="111"> 实验要求名称 </td>
  		<td width="87"> 操作 </td>
  	</tr>
    	<%
		if (requireList != null) {
			for (int i = 0; i < requireList.size(); i++) {
			Require require=(Require)requireList.get(i);		
			String reqno=require.getRequireno();
			String reqname=require.getRequirename();
		%>							
		<tr>
			<td><%=reqno %></td>
			<td><%=reqname %></td>
			<td>
				<a onClick="del(<%=reqno%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
  </table>	
	  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <form method="post" action="RequireServlet" id="form1">
  <table width="314" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
    <tr>
      <td width="60">编号：</td>
      <td width="248"><input id="requireNum" name="requireNum" type="text"/></td>
    </tr>
    <tr>
      <td>名称：</td>
      <td><input id="requireMing" name="requireMing"></td>
    </tr>
   
    <tr>
      <td colspan="2" align="center"><input type="submit" value="确定" />
	  <input type="reset" value="取消" />
	  </td>
    </tr>
  </table>
 </form>
  </body>
</html>
