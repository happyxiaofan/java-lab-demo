<%@page import="entity.Course"%>
<%@page import="biz.CourseService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	CourseService courseService=new CourseService();
	List CourseList=courseService.getAllCourse();
%>
<!DOCType HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>课程管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="lab/style.css">
	

  </head>
  
  <body>
     <script type="text/javascript">
		function del(courseid){
			if(window.confirm("确定删除吗?")){
			window.location="CourseServlet?courseid="+courseid;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">课程管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="103"> 课程编号  </td>
  		<td width="133"> 课程名称 </td>
  		<td width="133"> 实验课程名称 </td>
  		<td width="87"> 操作 </td>
  	</tr>
    	<%
		if (CourseList != null) {
			for (int i = 0; i < CourseList.size(); i++) {
			Course course=(Course)CourseList.get(i);		
			int courseid=course.getCourseid();
			String courseno=course.getCourseno();
			String coursename=course.getCoursename();
			String experimentcoursename=course.getExperimentcoursename();
		%>							
		<tr>
			<td><%=courseno %></td>
			<td><%=coursename %></td>
			<td><%=experimentcoursename %></td>
			<td>
				<a onClick="del(<%=courseid%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
		<tr></tr>
  </table>	
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <form method="post" action="CourseServlet" id="form1">
  <table width="314" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
    <tr>
      <td width="60">课程编号：</td>
      <td width="248"><input id="courseNum" name="courseNum" type="text"/></td>
    </tr>
    <tr>
      <td>课程名称：</td>
      <td><input id="courseMing" name="courseMing"></td>
    </tr>
    <tr>
      <td>实验课程名称：</td>
      <td><input id="experimentcourseMing" name="experimentcourseMing"></td>
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
