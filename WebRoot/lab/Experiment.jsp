<%@page import="entity.Course"%>
<%@page import="entity.Category"%>
<%@page import="biz.CourseService"%>
<%@page import="biz.CategoryService"%>
<%@page import="biz.TypeService"%>
<%@page import="biz.ExperimentService"%>
<%@page import="entity.Experiment"%>
<%@page import="entity.Type"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	ExperimentService experimentService=new ExperimentService();
	List experimentList=experimentService.getAllExperiment();
	
	TypeService typeService=new TypeService();
	List typeList=typeService.getAllType();
	
	CategoryService categoryService=new CategoryService();
	List categoryList=categoryService.getAllCategory();
	
	CourseService courseService=new CourseService();
	List courseList=courseService.getAllCourse();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="lab/style.css">

  </head>
  
  <body>
    <script type="text/javascript">
		function del(experimentid){
			if(window.confirm("确定删除吗?")){
			window.location="ExperimentServlet?experimentid="+experimentid;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">实验管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="133"> 实验名称  </td>
  		<td width="77"> 实验学时  </td>
  		<td width="111"> 实验类型  </td>
  		<td width="111"> 实验类别 </td>
  		<td width="111"> 所属课程 </td>
  		<td width="77"> 操作 </td>
  	</tr>
    	<%
		if (experimentList != null) {
			for (int i = 0; i < experimentList.size(); i++) {
			Experiment experiment=(Experiment)experimentList.get(i);	
			int experimentid=experiment.getExperimentid();
			String experimentname="";
			int coursehour=0;;
			String typename="";
			String categoryname="";
			String coursename="";
		%>							
		<tr>
			<td><%=experimentname %></td>
			<td><%=coursehour %></td>
			<td><%=typename %></td>
			<td><%=categoryname %></td>
			<td><%=coursename %></td>
			<td>
				<a onClick="del(<%=experimentid%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
  </table>	
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <form method="post" action="ExperimentServlet" id="form1">
  <table width="314" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
    <tr>
      <td width="60">名称</td>
      <td width="248"><input id="experimentMing" name="experimentMing" type="text"/></td>
    </tr>
    <tr>
      <td>学时</td>
      <td><input id="xueshi" name="xueshi" type="text"></td>
    </tr>
    <tr>
      <td>实验类型：</td>
      <td><select id="typeming" name="typeming">
      	<%for (int i = 0; i < typeList.size(); i++) {
      		Type type=(Type)typeList.get(i);
      		String typenum=type.getTypeno();
      		String typeMing=type.getTypename();
      	 %>    	
      	<option value=<%=typenum%>><%=typeMing%></option>
      	<%} %>
      </select></td>
    </tr>
    <tr>
      <td>实验类别：</td>
      <td><select id="categoryming" name="categoryming">
      	<%for (int i = 0; i < categoryList.size(); i++) {
      		Category category=(Category)categoryList.get(i);
      		String categorynum=category.getCategoryno();
      		String categoryMing=category.getCategoryname();
      	 %>    	
      	<option value=<%=categorynum%>><%=categoryMing%></option>
      	<%} %>
      </select></td>
    </tr>
    <tr>
      <td>所属课程：</td>
      <td><select id="courseming" name="courseming">
      	<%for (int i = 0; i < courseList.size(); i++) {
      		Course course=(Course)courseList.get(i);
      		String coursenum=String.valueOf(course.getCourseid());
      		String courseMing=course.getCoursename();
      	 %>    	
      	<option value=<%=coursenum%>><%=courseMing%></option>
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
