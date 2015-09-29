<%@page import="entity.Major"%>
<%@page import="biz.MajorService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	MajorService majorService=new MajorService();
	List MajorList=majorService.getAllMajor();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>专业管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="lab/style.css">
  </head>
  
  <body>
    <script type="text/javascript">
		function del(majorid){
			if(window.confirm("确定删除吗?")){
			window.location="MajorServlet?majorid="+majorid;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">专业管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="133"> 专业名称 </td>
  		<td width="188"> 专业描述 </td>
  		<td width="87"> 操作 </td>
  	</tr>
    	<%
		if (MajorList != null) {
			for (int i = 0; i < MajorList.size(); i++) {
			Major major=(Major)MajorList.get(i);	
			int majorid=major.getMajorid();	
			String majorname=major.getMajorname();
			String majordesc=major.getMajordesc();
		%>							
		<tr>
			<td><%=majorname %></td>
			<td><%=majordesc %></td>
			<td>
				<a onClick="del(<%=majorid%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
  </table>	
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <form method="post" action="MajorServlet" id="form1">
  <table width="314" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
    <tr>
      <td width="60">名称</td>
      <td width="248"><input id="majorMing" name="majorMing" type="text"/></td>
    </tr>
    <tr>
      <td>描述</td>
      <td><textarea id="majorDis" name="majorDis" ows="3"></textarea></td>
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
