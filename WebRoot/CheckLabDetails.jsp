<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>My JSP 'CheckLabDetails.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<form name="Form1" method="post" action="LabDistributionList.aspx"
			id="Form1">
			<div>
				<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
					value="/wEPDwULLTE0OTUxNjIwNjUPZBYCAgEPZBYEAgEPEGQPFgVmAgECAgIDAgQWBRAFBDIwMTUFBDIwMTVnEAUEMjAxNAUEMjAxNGcQBQQyMDEzBQQyMDEzZxAFBDIwMTIFBDIwMTJnEAUEMjAxMQUEMjAxMWdkZAIHDzwrAAsBAA8WCB4IRGF0YUtleXMWAB4LXyFJdGVtQ291bnRmHglQYWdlQ291bnQCAR4VXyFEYXRhU291cmNlSXRlbUNvdW50ZmRkZLvfT5/GNn7wcKrxAU16BnXiMhzt" />
			</div>

			<div>

				<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
					value="/wEWCQL17aGlCgL4wa6BDQL4wbLkBAL4wYbfAwL4weqyCwL4wf6VAgK9utojAry62iMC7468vwVQorjTV/EofxgRgOlFmrWjZ0Lq+Q==" />
			</div>
			<TABLE id="Table1"
				style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px"
				cellSpacing="0" cellPadding="0" width="300" border="0">
				<TR>
					<TD style="HEIGHT: 25px">
						<FONT face="宋体">学年： <select name="ddlYear" id="ddlYear"
								style="width: 80px;">
								<option selected="selected" value="2015">
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

							</select>学期： <select name="ddlTerm" id="ddlTerm" style="width: 80px;">
								<option selected="selected" value="上学期">
									上学期
								</option>
								<option value="下学期">
									下学期
								</option>

							</select>&nbsp;&nbsp; <input type="submit" name="btnQuery" value="查询"
								id="btnQuery" class="Input_bg" style="width: 64px;" />
						</FONT>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 21px">
						<FONT face="宋体">&nbsp;</FONT>
					</TD>
				</TR>
				<TR>
					<TD>
						<table class="Grid" cellspacing="0" cellpadding="3" rules="all"
							border="1" id="dgLabApply"
							style="background-color: White; border-color: #CCCCCC; border-width: 1px; border-style: None; width: 856px; border-collapse: collapse;">
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
						</table>
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
