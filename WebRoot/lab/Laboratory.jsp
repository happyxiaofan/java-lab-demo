<%@page import="biz.LabService"%>
<%@page import="entity.Lab"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	LabService LabService=new LabService();
	List LabList=LabService.getAllLab();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Laboratory.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="lab/style.css">
	
  </head>
  
  <body>
     <script type="text/javascript">
		function del(labid){
			if(window.confirm("确定删除吗?")){
			window.location="LabServlet?labid="+labid;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">实验室管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="133"> 实验室名称 </td>
  		<td width="188"> 实验室描述 </td>
  		<td width="111"> 能容纳人数 </td>
  		<td width="87"> 操作 </td>
  	</tr>
    	<%
		if (LabList != null) {
			for (int i = 0; i < LabList.size(); i++) {
			Lab lab=(Lab)LabList.get(i);	
			int labid=lab.getLabid();	
			String labname=lab.getLabname();
			String labdesc=lab.getLabdesc();
			int labcapacity=lab.getLabcapacity();
		%>							
		<tr>
			<td><%=labname %></td>
			<td><%=labdesc %></td>
			<td><%=labcapacity %></td>
			<td>
				<a onClick="del(<%=labid%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
  </table>	
		  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <form method="post" action="LabServlet" id="form1">
  <table width="314" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
    <tr>
      <td width="60">名称：</td>
      <td width="248"><input id="labMing" name="labMing" type="text"/></td>
    </tr>
    <tr>
      <td>容纳人数：</td>
      <td><input id="labNum" name="labNum" type="text"></td>
    </tr>
    <tr>
      <td>描述：</td>
      <td><textarea id="labDis" name="labDis" rows="3"></textarea></td>
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
