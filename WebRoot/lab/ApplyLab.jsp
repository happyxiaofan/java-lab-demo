<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@page import="entity.Teacher"%>
<%@page import="entity.Dept"%>
<%@page import="biz.DeptService"%>
<%@page import="biz.TeacherService"%>
<%@ page import="biz.*,entity.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="dao.*"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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

		<title>申请实验室</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="lab/style.css" rel="stylesheet" type="text/css">
		<script>
	function OpenWin(day, time, year, term, weeks) {
		var returnValue = showModalDialog('FreeLabList.aspx?time=' + time
				+ '&day=' + day + '&year=' + year + '&term=' + term + '&weeks='
				+ weeks, 0,
				'dialogWidth:200px;dialogHeight:200px;status:no;help:no');	
				}
	</script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/ajax.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/form.js"></script>
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
						<option value="2015">
							2015
						</option>
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
		</table>
	</form>
	</body>
</html>
