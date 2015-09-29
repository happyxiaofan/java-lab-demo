<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="biz.ExperimenterService"%>
<%@page import="biz.*" %>
<%@page import="entity.*"%>
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

		<title>My JSP 'LabDetails.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		
		<meta http-equiv="description" content="This is my page">
		<link href="lab/style.css" rel="stylesheet" type="text/css">
		<script language="javascript">

		function OpenWin2(arg)
		{			
			var result =window.open(arg,'','height=400,width=830,top=100,left=100,toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=yes,status=no');
			return false;
		}			
		</script>
		<script type="text/javascript">
		//<![CDATA[
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
//]]>
</script>
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form name="Form1" method="post"
			action="CheckLabDetailsAction"
			id="Form1">
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
					value="/wEWFQLU3ZaBCgLKquO9BwK53bf6DgKuoo+nBQLlk43MBgKe9K2FAwKuoqOiBwLlk9niCgKe9OGUDgKuoveTDgKA/YLJBQLvr6+FDgKuoqurBQKA/c7nCALvr6MkAq6iv5IHApvm+PUHAtTGma8EAq6i040JAt/krMsLAt6HpowOQkkXDh5pGGuAFw0bQj6LDnCzJxA=" />
			</div>
			<TABLE id="Table1"
				style="Z-INDEX: 106; LEFT: 0px; POSITION: absolute; TOP: 16px"
				cellSpacing="0" cellPadding="0" width="300" border="0">
				<TR>
					<TD>
						<table cellspacing="0" cellpadding="3" rules="all" border="1"
							id="dgData"
							style="background-color: White; border-color: #CCCCCC; border-width: 1px; border-style: None; width: 804px; border-collapse: collapse;">
							<tr
								style="color: White; background-color: #006699; font-weight: bold;">
								<td>
									学年
								</td>
								<td>
									学期
								</td>
								<td>
									星期
								</td>
								<td>
									节次
								</td>
								<td>
									实验室
								</td>
								<td>
									班级
								</td>
								<td>
									课程名称
								</td>
								<td>
									总共周数
								</td>
								<td>
									周次
								</td>
								<td>
									&nbsp;
								</td>
								<td>
									&nbsp;
								</td>
								<td>
									审核通过
								</td>
							</tr>
							<%
								//从数据库获取所有的申请记录
								String teacher = new String(request.getParameter("teacher").getBytes("ISO-8859-1"),"utf-8");
								//out.print(teacher);
								int count = Integer.parseInt(request.getParameter("count"));
								//out.print(count);
								ExperimentService es = new ExperimentService();
								List list3 = es.getWeeksCount(teacher);
								List labapplylist = es.getApplyDetails(teacher);
								//Iterator it = labapplylist.iterator();
								List classnamelist = es.getClasses(teacher);
								//String term,semester,day,time,labname,classname,experimentname,weekscount,weeks,labrequire,labcategory;
								//String week = "";
								//int labcount,percount = 0;
								for(int i= 0;i<count;i++){
									for(int j =0;j<classnamelist.size();j++){
										Experiment ep = (Experiment)labapplylist.get(i);
										String term = ep.getTerm();			//学年
										String semester = ep.getSemester();	//学期
										String day = ep.getDay();				//星期
										String time = ep.getTime();			//节次
										String labname = ep.getCourse();		//实验室
										String classname = ep.getLabclass();	//班级
										String experimentname = ep.getLabnum();//实验名称
										int labcount = ep.getLabcount();	//实验人数
										int percount = ep.getPercount();	//每组人数
										String labrequire = ep.getLabrequire();//实验要求
										String labcategory = ep.getLabcategory();//实验类别
										
										int number = 0;
										String week =(String) list3.get(i);
										String[] week2 = week.split(",");
										number = week2.length;
							 %>
							 
							 <tr style="color: #000066;">
								<td>
									<%=term %>
									<%request.getSession().setAttribute("term",term); %>
								</td>
								<td>
									<%=semester %>
									<%request.getSession().setAttribute("semester",semester); %>
								</td>
								<td>
									<%=day %>
									<%request.getSession().setAttribute("day",day); %>
								</td>
								<td>
									<%=time %>
									<%request.getSession().setAttribute("time",time); %>
								</td>
								<td>
									<%=experimentname %>
									<%request.getSession().setAttribute("experimentname",experimentname); %>
								</td>
								<td>
									<%
										String csname = "";
										Classes c =(Classes) classnamelist.get(j);
										csname = c.getClassname(); %>
									 <%=csname %>
									 <%request.getSession().setAttribute("csname",csname); %>
								</td>
								<td>
									<%=labname %>
									<%request.getSession().setAttribute("labname",labname); %>
								</td>
								<td>
									<%
										
									 %>
									 <%=number %>
									 <%
									 	String weeks_count =Integer.toString(number);
									 	request.getSession().setAttribute("weeks_count",weeks_count);
									  %>
								</td>
								<td>
									<span id="dgData_ctl07_lblWeeks">
									<%=week%>
									<%request.getSession().setAttribute("week",week); %>
									</span>
								</td>
								<td>
									<a onclick="OpenWin2('LabApplyExperiment.jsp?term=<%=term %>&semester=<%=semester %>&teacher=<%=teacher %> &day=<%=day %>&time=<%=time %>&labname=<%=labname %>&classname=<%=classname %>&experimentname=<%=experimentname %>&csname=<%=csname %>&labcount=<%=labcount %>&percount=<%=percount %>&labrequire=<%=labrequire %>&labcategory=<%=labcategory %>&week=<%=week %>');" id="dgData_ctl07_lbtnDetails" href="javascript:__doPostBack('dgData$ctl07$lbtnDetails','')">详细安排</a>
								</td>
								<td>
									<a onclick="return confirm('确认删除？');" id="dgData_ctl07_lbtnDelete" href="javascript:__doPostBack('dgData_ctl07_lbtnDelete','')">删除</a>
								</td>
								<td>
									<input id="dgData_ctl07_cbChoose" type="checkbox" name="labdetails$select" checked="checked" />
								</td>
							</tr>
							 
							<%
									}
								}
							 %>
							
						</table>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 28px">
						<input type="submit" name="btnCheck" value="审核通过选中申请"
							onclick="return confirm('确认审核全部选中申请？');" id="btnCheck" />
						<input type="submit" name="btnCheckAll" value="全部审核通过"
							onclick="return confirm('确认审核全部选中申请？');" id="btnCheckAll" />
					</TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
			</TABLE>

			<FONT face="宋体"></FONT>

		</form>
	</body>

</html>
