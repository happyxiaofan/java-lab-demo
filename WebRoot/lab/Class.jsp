<%@page import="entity.Major"%>
<%@page import="biz.MajorService"%>
<%@page import="biz.ClassService"%>
<%@page import="entity.Classes"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	ClassService ClassService=new ClassService();
	List ClassList=ClassService.getAllClass();
	
	MajorService majorService=new MajorService();
	List MajorList=majorService.getAllMajor();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>班级管理</title>
    
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
		function del(classid){
			if(window.confirm("确定删除吗?")){
			window.location="ClassServlet?classid="+classid;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">班级管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="133"> 班级名称  </td>
  		<td width="99"> 年级 </td>
  		<td width="113"> 班级人数</td>
  		<td width="133">所属专业</td>
  		<td width="87"> 操作 </td>
  	</tr>
    	<%
		if (ClassList != null) {
			for (int i = 0; i < ClassList.size(); i++) {
			Classes clas=(Classes)ClassList.get(i);		
			int classid=clas.getClassid();
			String classname=clas.getClassname();
			String grade=clas.getGrade();
			int totalnum=clas.getTotalnum();
			String majorname=clas.getMajorname();
			
		%>							
		<tr>
			<td><%=classname %></td>
			<td><%=grade %></td>
			<td><%=totalnum %></td>
			<td><%=majorname %></td>
			<td>
				<a onClick="del(<%=classid%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
  </table>	
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <form method="post" action="CourseServlet" id="form1">
  <table width="314" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
    <tr>
      <td width="60">名称：</td>
      <td width="248"><input id="classMing" name="classMing" type="text"/></td>
    </tr>
    <tr>
      <td>年级：</td>
      <td><input id="nianji" name="nianji"></td>
    </tr>
    <tr>
      <td>人数：</td>
      <td><input id="num" name="num"></td>
    </tr>
     <tr>
      <td>专业：</td>
      <td><select id="majorming" name="majorming">
      	<%for (int i = 0; i < MajorList.size(); i++) {
      		Major major=(Major)MajorList.get(i);
      		String majorname=major.getMajorname();
      		int majorid=major.getMajorid();
      	 %>    	
      	<option value="<%=majorid%>"><%=majorname%></option>
      	<%} %>
      </select></td>
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
