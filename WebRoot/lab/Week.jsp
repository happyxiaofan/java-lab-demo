<%@page import="entity.Term"%>
<%@page import="biz.TermService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	TermService termService=new TermService();
	List termList=termService.getAllTerm();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>教学日历管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="lab/style.css">

  </head>
  
  <body>
    <script type="text/javascript">
		function del(termid){
			if(window.confirm("确定删除吗?")){
			window.location="TermServlet?termid="+termid;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">教学日历管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="77"> 学年  </td>
  		<td width="99"> 学期</td>
  		<td width="99"> 开始周 </td>
  		<td width="99"> 结束周 </td>
  		<td width="87"> 操作 </td>
  	</tr>
    	<%
		if (termList != null) {
			for (int i = 0; i < termList.size(); i++) {
			Term term=(Term)termList.get(i);		
			int termid=term.getTermid();
			int beginweek=term.getBeginweek();
			int endweek=term.getEndweek();
			String termname=term.getTerm();
			String weekyear=term.getWeekyear();
		%>							
		<tr>
			<td><%=weekyear %></td>
			<td><%=termname %></td>
			<td><%=beginweek %></td>
			<td><%=endweek %></td>
			<td>
				<a onClick="del(<%=termid%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
  </table>	
		
  </body>
</html>
