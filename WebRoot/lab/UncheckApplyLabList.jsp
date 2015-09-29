<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="biz.*"%>
<%@page import="java.util.*" %>
<%@page import="entity.Experiment"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	ExperimentService es = new ExperimentService();
	String term = "";
	String semester = "";
	String teacher = "";
	int count = 0;
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'LabApplyList.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="styles.css">

	</head>

	<body MS_POSITIONING="GridLayout">
		<form name="Form1" method="post" action="LabDetails.jsp" id="Form1">
			<div>
				<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
					value="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" />
			</div>

			<table class="Grid" cellspacing="0" cellpadding="3" rules="all"
				border="1" id="dgLabApply"
				style="background-color: White; border-color: #CCCCCC; border-width: 1px; border-style: None; width: 856px; border-collapse: collapse; Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px">
				<tr
					style="color: White; background-color: #006699; font-weight: bold;">
					<td> 
						学年 
					</td>
					<td>
						学期
					</td>
					<td>
						申请人
					</td>
					<td>
						申请数
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<%
					//首先从数据库中获取申请实验室的相关记录
					List  applylist = es.getAllExperiment();
					Iterator it = applylist.iterator();
					//在遍历之前需要把重复的数据合并
					
					for(int i = 0;i<applylist.size();i++){
						Experiment ep = (Experiment)applylist.get(i);
						term = ep.getTerm();//学年
						semester = ep.getSemester();//学期
						teacher = ep.getTeacher();//申请人
					/*do{
						Experiment ep = (Experiment)it.next();
						term = ep.getTerm();//学年
						semester = ep.getSemester();//学期
						teacher = ep.getTeacher();//申请人
					*/	
				 %>
				 <tr  style="color:#000066;">
				 	<td><%=term %></td>
				 	<td><%=semester %></td>
				 	<td><%=teacher %></td>
				 	<td>
				 	<%
				 		count = es.getApplyNum(teacher);
				 	 %>
				 	<%=count %>
				 	</td>
				 	<td>
				 		<a href='LabDetails.jsp?term=<%=term %>&semester=<%=semester %>&teacher=<%=teacher %>&count=<%=count %>'>详细信息</a>
				 	</td>
				 </tr>
				 <%
				 		for(int j = i+1;j<applylist.size();j++){
				 			Experiment eps = (Experiment)applylist.get(j);
				 			//三条字段的信息相同则合并，否则为新的记录
				 			if(teacher.equals(eps.getTeacher()) && term.equals(eps.getTerm()) && semester.equals(eps.getSemester())){
				 				applylist.remove(j);
				 				continue;
				 			}
				 		}
				 }
				  /*}*/
				 /* while(it.hasNext());*/
				  %>
			</table>
			&nbsp;

			<FONT face="宋体"></FONT>

		</form>
	</body>

</html>
