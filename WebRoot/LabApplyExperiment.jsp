<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="biz.ExperimentService"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'LabApplyExperiment.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script type="text/javascript">
				var theForm = document.forms['Form1'];
				if (!theForm) {
					theForm = document.Form1;
				}
				function __doPostBack(eventTarget, eventArgument) {
					if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
						theForm.__EVENTTARGET.value = eventTarget;
						theForm.__EVENTARGUMENT.value = eventArgument;
						theForm.submit();
					}
				}
		</script>
	</head>

	<body MS_POSITIONING="GridLayout">
		<form name="Form1" method="post" action="#" id="Form1">
			<div>
				<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET"
					value="" />
				<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
					value="" />
				<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
					value="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" />
			</div>
			<div>
				<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
					value="/wEWDQK9hoGTCwKx0bjWBQKx0czMBwKx0YC3CAKx0fS4CwKx0YivDQKx0ZylDwKx0dAPArHRxKwMAs7Yu/8DAs7YrxwCztjDkgICztjXiASVl8+RhoCUy0k1+5CqBCbaJLrs5g==" />
			</div>
			<center>
				<TABLE id="Table1"
					style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px"
					cellSpacing="0" cellPadding="0" width="300" border="0">
					<TR>
						<TD noWrap>
							<TABLE id="Table2" style="WIDTH: 624px; HEIGHT: 136px"
								cellSpacing="0" cellPadding="0" width="624" border="1"
								borderColor="#0066cc">
								<TR>
									<TD style="WIDTH: 89px">
										学年
									</TD>
									<TD>
										<span id="lblYear"><%=request.getParameter("term") %></span>
									</TD>
									<TD>
										学期
									</TD>
									<TD>
										<span id="lblTerm"><%=new String(request.getParameter("semester").getBytes("ISO-8859-1"),"utf-8" ) %></span>
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 89px; HEIGHT: 21px">
										星期
									</TD>
									<TD style="HEIGHT: 21px">
										<span id="lblDay"><%=new String(request.getParameter("day").getBytes("ISO-8859-1"),"utf-8" )%></span>
									</TD>
									<TD style="HEIGHT: 21px">
										节次
									</TD>
									<TD style="HEIGHT: 21px">
										<span id="lblTimeName"><%=new String(request.getParameter("time").getBytes("ISO-8859-1"),"utf-8" ) %></span>
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 89px">
										实验室
									</TD>
									<TD>
										<span id="lblLabName"><%=new String(request.getParameter("labname").getBytes("ISO-8859-1"),"utf-8" ) %></span>
									</TD>
									<TD>
										班级
									</TD>
									<TD>
										<span id="lblClassName"><%=new String(request.getParameter("csname").getBytes("ISO-8859-1"),"utf-8" ) %></span>
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 89px">
										课程名称
									</TD>
									<TD>
										<span id="lblCourseName">
										<%String experimentname = new String(request.getParameter("experimentname").getBytes("ISO-8859-1"),"utf-8" ); %>
										<%=experimentname %>
										</span>
									</TD>
									<TD>
										教师
									</TD>
									<TD>
										<span id="lblTeacher">
										<%String teacher = new String(request.getParameter("teacher").getBytes("ISO-8859-1"),"utf-8" );%>
										<%=teacher %> 
										</span>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD noWrap>
							<table class="Grid" cellspacing="0" cellpadding="3" rules="all"
								border="1" id="dgData"
								style="background-color: White; border-color: #CCCCCC; border-width: 1px; border-style: None; width: 824px; border-collapse: collapse;">
								<tr
									style="color: White; background-color: #006699; font-weight: bold;">
									<td>
										周次
									</td>
									<td>
										实验名称
									</td>
									<td>
										实验要求
									</td>
									<td>
										实验者类别
									</td>
									<td>
										实验者人数
									</td>
									<td>
										每组人数
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<%
									ExperimentService es = new ExperimentService();
									
									int labcount = Integer.parseInt(request.getParameter("labcount"));	//实验人数
									int percount = Integer.parseInt(request.getParameter("percount"));	//每组实验人数
									String labrequire = new String(request.getParameter("labrequire").getBytes("ISO-8859-1"),"utf-8");
									String labcategory = new String(request.getParameter("labcategory").getBytes("ISO-8859-1"),"utf-8");
									//获取实验要求和实验类别
									String requirename = es.getLabRequireName(labrequire);
									String categoryname = es.getCategoryName(labcategory);
									//获取周数
									//String week = new String(request.getParameter("week").getBytes("ISO-8859-1"),"utf-8");
									String week = request.getParameter("week");
									String[] weeks = week.split(",");
									List list = es.getWeeksCount(teacher);
									for(int i = 0; i < weeks.length; i++){
										/*String t_week = (String)list.get(i);
										String[] myweek = t_week.split(",");
										for(int j =0;j<myweek.length;j++){
											String tweek = myweek[j];*/
										String tweek = weeks[i];
								 %>
								
								<tr style="color: #000066;">
									<td>
										<%=tweek %>
									</td>
									<td>
										<span id="dgData_ctl02_Label1"><%=experimentname %></span>
									</td>
									<td>
										<span id="dgData_ctl02_Label2"><%=requirename %></span>
									</td>
									<td>
										<span id="dgData_ctl02_Label3"><%=categoryname %></span>
									</td>
									<td>
										<span id="dgData_ctl02_Label4"><%=labcount %></span>
									</td>
									<td>
										<span id="dgData_ctl02_Label5"><%=percount %></span>
									</td>
									<td>
										<a href="javascript:__doPostBack('dgData$ctl02$ctl00','')"
											style="color: #000066;">编辑</a>
									</td>
								</tr>
								<%	
									}
								 %>
							</table>
						</TD>
					</TR>
					<TR>
						<TD noWrap>
							<A href="" onclick="window.close()">关闭</A>
						</TD>
					</TR>
				</TABLE>

				<FONT face="宋体"></FONT>

			</center>
		</form>
	</body>

</html>
