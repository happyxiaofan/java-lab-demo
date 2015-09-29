<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>教师登录</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<STYLE type="text/css">
.td {
	BORDER-RIGHT: #a8bdf4 1pt solid;
	BORDER-TOP: #a8bdf4 1pt;
	BORDER-LEFT: #a8bdf4 1pt solid;
	BORDER-BOTTOM: #a8bdf4 1pt
}

.font {
	FONT-WEIGHT: bold;
	FONT-SIZE: 10pt;
	COLOR: #ffffff
}

SELECT {
	BORDER-RIGHT: #a8bdf4 1pt solid;
	BORDER-TOP: #a8bdf4 1pt solid;
	FONT-SIZE: 9pt;
	BORDER-LEFT: #a8bdf4 1pt solid;
	WIDTH: 90pt;
	BORDER-BOTTOM: #a8bdf4 1pt solid;
	HEIGHT: 12pt;
	BACKGROUND-COLOR: #ddddff
}

INPUT {
	BORDER-RIGHT: #a8bdf4 1pt solid;
	BORDER-TOP: #a8bdf4 1pt solid;
	BORDER-LEFT: #a8bdf4 1pt solid;
	BORDER-BOTTOM: #a8bdf4 1pt solid;
	HEIGHT: 14pt;
	BACKGROUND-COLOR: #ddddff
}

.text {
	FONT-SIZE: 9pt
}
</STYLE>
		<LINK href="lab/style.css" type="text/css" rel="stylesheet">

		<link rel="stylesheet" href="Template068Blank.css" type="text/css"></link>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/ajax.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/form.js"></script>
	</HEAD>
	<BODY>
		<form name="t_form" method="post" action="TeacherLoginServlet">
			<TABLE height="80" cellSpacing="0" cellPadding="0" width="600"
				align="center" border="0">
				<TBODY>
					<TR>
						<TD>
							<IMG height="80" src="imagesBlank/head.jpg" width="600">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing="0" cellPadding="0" width="600" align="center">
				<TBODY>
					<TR>
						<TD bgColor="#a8bdf4" height="20">
							<DIV class="font" align="center">
								欢迎您，请登录后使用！
							</DIV>
						</TD>
					</TR>
					<TR>
						<TD class="td" height="200">
							<TABLE class="text" cellSpacing="0" cellPadding="0" width="60%"
								align="center" border="0">
								<TBODY>
									<TR>
										<TD height="11">
											<DIV align="right">
												请选择您所在系：&nbsp;&nbsp;
											</DIV>
										</TD>
										<TD height="11">
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
												<!--<option value="01">
													企业管理系
												</option>
												<option value="02">
													信息管理系
												</option>
												<option value="03">
													金融学系
												</option>
												<option value="04">
													财务投资系
												</option>
												<option value="05">
													经济贸易系
												</option>
												<option value="06">
													会计学系
												</option>
												<option value="11">
													行政
												</option>
												<option value="07">
													营销旅游系
												</option>


											-->
											</select>

										</TD>
									</TR>
									<TR>
										<TD height="20">
											&nbsp;
										</TD>
										<TD>
											&nbsp;
										</TD>
									</TR>
									<TR>
										<TD height="17">
											<DIV align="right">
												请选择您的姓名：&nbsp;&nbsp;
											</DIV>
										</TD>
										<TD height="17">
											<select name="list" id="ddlTeacher">
												<option value="====请选择====">
													====请选择====
												</option>

											</select>
											
										</TD>
									</TR>
									<TR>
										<TD height="19">
											&nbsp;
										</TD>
										<TD height="19">
											&nbsp;
										</TD>
									</TR>
									<TR>
										<TD>
											<DIV align="right">
												请输入您的密码：&nbsp;&nbsp;
											</DIV>
										</TD>
										<TD>
											<input name="txtPassword" type="password" id="txtPassword"
												style="width: 119px;" />
										</TD>

									</TR>
									<TR>
										<TD height="20">
											&nbsp;
										</TD>
										<TD>
											&nbsp;
										</TD>
									</TR>
									<TR>
										<TD>
											&nbsp;
										</TD>
										<TD>
											<input type="submit" name="btSubmit" value="点此登陆"
												id="btSubmit" />
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD bgColor="#a8bdf4" height="40">
							&nbsp;
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</form>
	</BODY>
</HTML>

