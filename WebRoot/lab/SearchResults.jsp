<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@page import="entity.Teacher"%>
<%@page import="entity.Dept"%>
<%@page import="biz.DeptService"%>
<%@page import="biz.TeacherService"%>
<%@ page import="biz.*,entity.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="dao.*"%>


<%
	List<Dept> deptlist = new DeptService().getAllDept();
	String deptID = "";
	String deptName = "";
	String tcName = "";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'SearchResults.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="lab/style.css" rel="stylesheet" type="text/css">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/ajax.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/form.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/details.js"></script>
	</head>
	<body bgcolor="#d6ecf9">
		<form method="get" name="applyform" action="ApplyLabServlet">
			<table width="694" border="2" cellpadding="1" cellspacing="1"
				bordercolor="#000000">
				<tr>
					<td width="136">
						请选择系别：
					</td>
					<td width="183">
						<select name="ddlDepts"
							onchange="showSubMenu(this.options[this.options.selectedIndex].value)"
							id="ddlDepts">
							<%
								Iterator it = deptlist.iterator();
								do {
									Dept d = (Dept) it.next();
									//获取Dept对象的编号和名称
									deptID = d.getDeptno();
									//out.print(deptID);
									deptName = d.getDeptname();
							%>
							<option value="<%=deptID%>"><%=deptName%></option>
							<%
								} while (it.hasNext());
							%>
							<option selected="selected" value="0">
								====请选择====
							</option>
						</select>
					</td>
					<td width="132">
						请选择教师：
					</td>
					<td width="218">
						<select name="list" id="ddlTeacher">
							<option value="====请选择====">
								====请选择====
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						学年：
					</td>
					<td>
						<select name="term">
							<option value="2014">
								2014
							</option>
							<option value="2013">
								2013
							</option>
							<option value="2012">
								2012
							</option>
							<option value="2011">
								2011
							</option>
							<option value="2010">
								2010
							</option>
						</select>
					</td>
					<td>
						学期：
					</td>
					<td>
						<select name="semester">
							<option value="上学期">
								上学期
							</option>
							<option value="下学期">
								下学期
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						选择周次：
					</td>
					<td colspan="3">
						<table id="cblWeek" border="0">
						<tbody>
							<tr>
								<td>
									<input name="cblWeek" id="cblWeek_0" type="checkbox" value="1"/>
									<label for="cblWeek_0">
										1
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_1" type="checkbox" value="2"/>
									<label for="cblWeek_1">
										2
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_2" type="checkbox" value="3"/>
									<label for="cblWeek_2">
										3
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_3" type="checkbox" value="4"/>
									<label for="cblWeek_3">
										4
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_4" type="checkbox" value="5"/>
									<label for="cblWeek_4">
										5
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_5" type="checkbox" value="6"/>
									<label for="cblWeek_5">
										6
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_6" type="checkbox" value="7"/>
									<label for="cblWeek_6">
										7
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_7" type="checkbox" value="8"/>
									<label for="cblWeek_7">
										8
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_8" type="checkbox" value="9"/>
									<label for="cblWeek_8">
										9
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_9" type="checkbox" value="10"/>
									<label for="cblWeek_9">
										10
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_10" type="checkbox" value="11"/>
									<label for="cblWeek_10">
										11
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_11" type="checkbox" value="12"/>
									<label for="cblWeek_11">
										12
									</label>
								</td>
							</tr>
							<tr>
								<td>
									<input name="cblWeek" id="cblWeek_12" type="checkbox" value="13"/>
									<label for="cblWeek_12">
										13
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_13" type="checkbox" value="14"/>
									<label for="cblWeek_13">
										14
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_14" type="checkbox" value="15"/>
									<label for="cblWeek_14">
										15
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_15" type="checkbox" value="16"/>
									<label for="cblWeek_15">
										16
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_16" type="checkbox" value="17"/>
									<label for="cblWeek_16">
										17
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_17" type="checkbox" value="18"/>
									<label for="cblWeek_17">
										18
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_18" type="checkbox" value="19"/>
									<label for="cblWeek_18">
										19
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_19" type="checkbox" value="20"/>
									<label for="cblWeek_19">
										20
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_20" type="checkbox" value="21"/>
									<label for="cblWeek_20">
										21
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_21" type="checkbox" value="22"/>
									<label for="cblWeek_21">
										22
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_22" type="checkbox" value="23"/>
									<label for="cblWeek_22">
										23
									</label>
								</td>
								<td>
									<input name="cblWeek" id="cblWeek_23" type="checkbox" value="24"/>
									<label for="cblWeek_23">
										24
									</label>
								</td>
							</tr>
						</tbody>
					</table>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<input type="submit" value="   查询   ">
					</td>
				</tr>
				<tr>
					<td colspan="4">
						&nbsp;
					</td>
				</tr>
				<TR>
					<TD colSpan="4" style="HEIGHT: 493px">
						<div align="center">
							<span id="lblTitle"
								style="display: inline-block; font-size: Larger; font-weight: bold; height: 24px; width: 100%;">
								<%
									String[] weeks = (String[])request.getSession().getAttribute("weeks");
									//只有当weeks的长度不等于0的时候才显示具体的周次
									if(weeks.length!=0){
										out.print("第");
										for(int i = 0;i<weeks.length-1;i++){
											out.print(weeks[i]);
										}
										out.print(weeks[weeks.length-1]+"周空闲实验室一览表");
									}
								 %> 
							</span>
						</div>
			<table id="TableResult" align="Center" rules="all"
				border="1"
				style="border-color: CornflowerBlue; height: 456px; width: 100%;">
				<tr align="center">
					<td>
						时间
					</td>
					<td>
						星期一
					</td>
					<td>
						星期二
					</td>
					<td>
						星期三
					</td>
					<td>
						星期四
					</td>
					<td>
						星期五
					</td>
					<td>
						星期六
					</td>
					<td>
						星期日
					</td>
				</tr>
				<tr align="center">
					<td>
						1-2节
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=1&time=1-2节'>空闲10个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('1','1','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3')>详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=2&time=1-2节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('2','1','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=3&time=1-2节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('3','1','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=4&time=1-2节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('4','1','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=5&time=1-2节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('5','1','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=6&time=1-2节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('6','1','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=7&time=1-2节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('7','1','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
				</tr>
				<tr align="center">
					<td>
						3-4节
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=1&time=3-4节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('1','2','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=2&time=3-4节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('2','2','2015','上学期','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=3&time=3-4节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('3','2','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=4&time=3-4节'>空闲6个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('4','2','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=5&time=3-4节'>空闲10个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('5','2','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=6&time=3-4节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('6','2','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=7&time=3-4节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('7','2','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
				</tr>
				<tr align="center">
					<td>
						中午
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=1&time=中午'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('1','3','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=2&time=中午'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('2','3','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=3&time=中午'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('3','3','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=4&time=中午'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('4','3','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=5&time=中午'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('5','3','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=6&time=中午'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('6','3','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=7&time=中午'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('7','3','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
				</tr>
				<tr align="center">
					<td>
						5-6节
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=1&time=5-6节'>空闲7个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('1','4','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=2&time=5-6节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('2','4','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=3&time=5-6节'>空闲7个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('3','4','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=4&time=5-6节'>空闲9个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('4','4','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=5&time=5-6节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('5','4','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=6&time=5-6节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('6','4','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=7&time=5-6节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('7','4','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
				</tr>
				<tr align="center">
					<td>
						7-8节
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=1&time=7-8节'>空闲10个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('1','5','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=2&time=7-8节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('2','5','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=3&time=7-8节'>空闲7个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('3','5','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=4&time=7-8节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('4','5','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=5&time=7-8节'>空闲10个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('5','5','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=6&time=7-8节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('6','5','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=7&time=7-8节'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('7','5','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
				</tr>
				<tr align="center">
					<td>
						晚上
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=1&time=晚上'>空闲9个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('1','6','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=2&time=晚上'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('2','6','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=3&time=晚上'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('3','6','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=4&time=晚上'>空闲10个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('4','6','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=5&time=晚上'>空闲9个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('5','6','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=6&time=晚上'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('6','6','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
					<td>
						<A title='点击申请'
							href='ApplyLabDetailsAction?day=7&time=晚上'>空闲11个实验室</A>
						<br>
						<br>
						<a title='点击查看详细空闲情况' href='#' onclick=OpenWin('7','6','<%=request.getSession().getAttribute("term") %>','<%=request.getSession().getAttribute("semester") %>','1,2,3') >详细空闲情况</a>
					</td>
				</tr>
			</table>
			</TD>
			</TR>
			</table>
		</form>
	</body>
</html>
