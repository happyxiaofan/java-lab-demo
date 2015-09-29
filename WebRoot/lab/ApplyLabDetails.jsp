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

		<title>ApplyLabStep1</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="style.css" rel="stylesheet" type="text/css">

	</head>

	<body bgcolor="#d6ecf9">
		<form name="Form1" method="get" action="AdminApplyLabDetailsAction"
			id="Form1">
			<div>
				<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET"
					value="" />
				<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
					value="" />
				<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
				<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
					value="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5Y+R5pa55rOV5LiO5bel5YW3GE1hdGxhYueoi+W6j+iuvuiuoeWfuuehgCHnlLXlrZDllYbliqHns7vnu5/lu7rorr7kuI7nrqHnkIYe6K6h566X5py6572R57uc5LiO55S15a2Q5ZWG5YqhIeaWh+eMruajgOe0ouS4juenkeaKgOiuuuaWh+WGmeS9nBLnjrDku6PnqIvluo/orr7orqEV6K6h566X5py656iL5bqP6K6+6K6hEueUteWtkOWVhuWKoeamguiuuhJFUlDljp/nkIbkuI7lrp7mlr0S566h55CG57O757uf5qih5oufGOS8muiuoeeuoeeQhuS/oeaBr+ezu+e7nwzllYbliqHnu5/orqEP5pyf6LSn5LiO5pyf5p2DD+ivgeWIuOaKlei1hOWtpiLlip7lhazova/ku7bvvIhPRkZJQ0Up6auY57qn5bqU55SoEuW/g+eQhuWBpeW6t+a1i+ivlRLliJvmlrDliJvkuJrlpKfotZsM5oiQ5pys5Lya6K6hGOWVhuS4mumTtuihjOS4muWKoeaooeaLnxU8ATABMQEyATYBNwE4AjEwAjExAjEyAjEzAjE0AjE1AjE2AjE3AjE4AjE5AjIwAjIxAjIyAjIzAjI0AjI1AjI2AjI3AjI5AjMwAjMxAjMyAjMzAjM0AjM1AjM2AjM3AjM4AjM5AjQwAjQxAjQyAjQzAjQ0AjQ1AjQ2BDE0MTIEMTQxMwQzNDY3BDM0NzQEMzQ3NQQzNDg1BDM0ODYEMzQ4NwQzNDg4BDM0OTAEMzQ5MwQzNDk0BDM0OTUEMzQ5NgQzNDk3BDM0OTgEMzUwMAQzNTAxFCsDPGdnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZxYBZmQCFQ8QDxYGHwYFC1JlcXVpcmVOYW1lHwcFCVJlcXVpcmVObx8IZ2QQFQQV6K+36YCJ5YiZ5a6e6aqM6KaB5rGCBuW/heS/rgbpgInkv64G5YW25LuWFQQBMAExATIBMxQrAwRnZ2dnZGQCFw8QDxYGHwYFDENhdGVnb3J5TmFtZR8HBQpDYXRlZ29yeU5vHwhnZBAVBxjor7fpgInmi6nlrp7pqozogIXnsbvliKsJ5Y2a5aOr55SfCeehleWjq+eUnwnmnKznp5HnlJ8J5LiT56eR55SfBuaVmeW4iAblhbbku5YVBwEwATEBMgEzATQBNQE2FCsDB2dnZ2dnZ2dkZAIlDzwrAAsAZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WDAUPQ2hlY2tCb3hMaXN0MiQwBRVkZ0RhdGEkY3RsMDIkY2JTZWxlY3QFFWRnRGF0YSRjdGwwMyRjYlNlbGVjdAUVZGdEYXRhJGN0bDA0JGNiU2VsZWN0BRVkZ0RhdGEkY3RsMDUkY2JTZWxlY3QFFWRnRGF0YSRjdGwwNiRjYlNlbGVjdAUVZGdEYXRhJGN0bDA3JGNiU2VsZWN0BRVkZ0RhdGEkY3RsMDgkY2JTZWxlY3QFFWRnRGF0YSRjdGwwOSRjYlNlbGVjdAUVZGdEYXRhJGN0bDEwJGNiU2VsZWN0BRVkZ0RhdGEkY3RsMTEkY2JTZWxlY3QFFWRnRGF0YSRjdGwxMiRjYlNlbGVjdOaow6l5Fdx2aCFy7P1w37M0IZYS" />
			</div>
			<div>
				<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
					value="/wEWVwLl38f/DQLMnMa8DALMnNq3DgLMnK5/Asyc4sAMAsyc9qcOAsyciiMCzJze6gICzJySZwKj1JbAAQKj1Mq8DwKj1N6jAQLl86ysAwL1nIbCDwLqnIbCDwLrnIbCDwLvnIbCDwLsnIbCDwL9nIbCDwLqnMbBDwLqnMrBDwLqnM7BDwLqnPLBDwLqnPbBDwLqnPrBDwLqnP7BDwLqnOLBDwLqnKbCDwLqnKrCDwLrnMbBDwLrnMrBDwLrnM7BDwLrnPLBDwLrnPbBDwLrnPrBDwLrnP7BDwLrnOLBDwLrnKrCDwLonMbBDwLonMrBDwLonM7BDwLonPLBDwLonPbBDwLonPrBDwLonP7BDwLonOLBDwLonKbCDwLonKrCDwLpnMbBDwLpnMrBDwLpnM7BDwLpnPLBDwLpnPbBDwLpnPrBDwLpnP7BDwKh5J/KCwKh5LOnAwKs1sikAwKB/ZKDBwKB/Yb4CAKql8Y5AqqX+pYJAqqX7vMCAqqXwpoHAo++wN4LAo++nM0NAo++sKoFAo++pIcOAo++2OMHAo++zNgIAo++oOANAsLdlasDAsLdiYAEAo/i5d4IApDi5d4IApHi5d4IApLi5d4IAvG1uM4GAu61uM4GAu+1uM4GAuy1uM4GAu21uM4GAuq1uM4GAuu1uM4GAsmS5bgDAqu+m5gCAsqX9aIH8IslbnGKcKgvsvUI6EQlZjVG6Mg=" />
			</div>
			<table id="Table1"
				style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 8px"
				cellSpacing="0" cellPadding="0" width="808" border="1">
				<TR>
					<TD colSpan="4">
						<P align="center">
							申请实验室
						</P>
					</TD>
				</TR>
				<TR>
					<TD width="206">
						学年
					</TD>
					<TD width="268">
						<span id="lblYear"><%=request.getSession().getAttribute("term")%> <%request.getSession().setAttribute("term",request.getSession().getAttribute("term"));%></span>
					</TD>
					<TD width="233">
						学期
					</TD>
					<TD width="489">
						<span id="lblTerm"><%=request.getSession().getAttribute("semester")%></span>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 16px">
						星期
					</TD>
					<TD style="HEIGHT: 16px">
						<span id="lblDayID"><%=request.getSession().getAttribute("day")%></span>
					</TD>
					<TD style="HEIGHT: 16px">
						节次
					</TD>
					<TD style="HEIGHT: 16px">
						<span id="lblTime"><%=request.getSession().getAttribute("time")%>
						</span>

					</TD>
				</TR>
				<TR>
					<TD>
						申请周
					</TD>
					<TD colSpan="3">
						<span id="lblWeeks"> <%
 	request.setCharacterEncoding("utf-8");
 	String[] weeks = (String[]) request.getSession().getAttribute(
 			"weeks");
 	//只有当weeks的长度不等于0的时候才显示具体的周次
 	if (weeks.length != 0) {
 		for (int i = 0; i < weeks.length-1; i++) {
 			out.print(weeks[i]);
 		}
 		out.print(weeks[weeks.length - 1] + "周");
 	}
 %> </span>
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 117px; HEIGHT: 6px" colSpan="4">
						选择实验室
					</TD>
				</TR>
				<TR vAlign="top" align="left">
					<TD colSpan="4">
						<table class="Grid" cellspacing="0" rules="rows" border="1"
							id="dgData"
							style="border-style: Dashed; width: 760px; border-collapse: collapse;">
							<tr class="controltype">
								<td>
									选择
								</td>
								<td>
									实验室(容纳人数)
								</td>
								<td>
									选择班级
								</td>
								<td>
									操作
								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl02_cbSelect" type="checkbox"  value="管301"/>
								</td>
								<td>
									管301 (34)
								</td>
								<td>
									<span id="dgData_ctl02_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl03_cbSelect" type="checkbox"
										value="管309"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl03$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管309 (30)
								</td>
								<td>
									<span id="dgData_ctl03_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl04_cbSelect" type="checkbox"
										value="管310"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl04$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管310 (30)
								</td>
								<td>
									<span id="dgData_ctl04_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl05_cbSelect" type="checkbox"
										value="管313"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl05$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管313 (41)
								</td>
								<td>
									<span id="dgData_ctl05_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl06_cbSelect" type="checkbox"
										value="管602"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl06$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管602(仅限沙盘模拟实验） (36)
								</td>
								<td>
									<span id="dgData_ctl06_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl07_cbSelect" type="checkbox"
										value="管304"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl07$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管304 (30)
								</td>
								<td>
									<span id="dgData_ctl07_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl08_cbSelect" type="checkbox"
										value="管308"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl08$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管308 (10)
								</td>
								<td>
									<span id="dgData_ctl08_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl09_cbSelect" type="checkbox"
										value="管501"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl09$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管501(暂时仅限Z-TREE实验） (24)
								</td>
								<td>
									<span id="dgData_ctl09_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl10_cbSelect" type="checkbox"
										value="管520"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl10$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管520(仅限人力资源实验） (8)
								</td>
								<td>
									<span id="dgData_ctl10_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl11_cbSelect" type="checkbox"
										value="管521"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl11$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管521(仅限眼动实验） (1)
								</td>
								<td>
									<span id="dgData_ctl11_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
							<tr>
								<td>
									<input name="lab$select" id="dgData_ctl12_cbSelect" type="checkbox"
										value="管522"
										onclick="javascript:setTimeout('__doPostBack(\'dgData$ctl12$cbSelect\',\'\')', 0)" />
								</td>
								<td>
									管522(仅限脑电实验） (1)
								</td>
								<td>
									<span id="dgData_ctl12_lblClassName"></span>
								</td>
								<td>

								</td>
							</tr>
						</table>
						<br>
					</TD>
				</TR>
				<TR>
					<TD vAlign="top" align="left" style="HEIGHT: 28px">
						课程
					</TD>
					<TD vAlign="top" align="left" style="HEIGHT: 28px">
						<select name="lab$course" id="ddlCourse" style="width: 264px;">
							<option selected="selected" value="0">
								请选择实验课程
							</option>
							<option value="1">
								C语言程序设计基础
							</option>
							<option value="2">
								数据库原理及程序设计
							</option>
							<option value="6">
								管理应用软件
							</option>
							<option value="7">
								会计管理信息系统
							</option>
							<option value="8">
								信息组织、存储与检索技术
							</option>
							<option value="10">
								ORACLE数据库
							</option>
							<option value="11">
								电子商务解决方案案例分析
							</option>
							<option value="12">
								管理信息系统
							</option>
							<option value="13">
								国际贸易实务模拟实验
							</option>
							<option value="14">
								数据通信计算机网络
							</option>
							<option value="15">
								期货交易理论与实务
							</option>
							<option value="16">
								企业电子商务
							</option>
							<option value="17">
								数据结构实验
							</option>
							<option value="18">
								统计学原理实验
							</option>
							<option value="19">
								网络会计
							</option>
							<option value="20">
								系统分析与系统模拟
							</option>
							<option value="21">
								信息系统开发环境与工具
							</option>
							<option value="22">
								证券投资学
							</option>
							<option value="23">
								电子商务基础
							</option>
							<option value="24">
								证券与期货
							</option>
							<option value="25">
								电子商务
							</option>
							<option value="26">
								计算机操作系统
							</option>
							<option value="27">
								Prolog语言程序设计
							</option>
							<option value="29">
								市场调研
							</option>
							<option value="30">
								运筹学
							</option>
							<option value="31">
								管理软件开发技术
							</option>
							<option value="32">
								ERP综合
							</option>
							<option value="33">
								其他
							</option>
							<option value="34">
								会计模拟实习
							</option>
							<option value="35">
								C语言程序课程设计
							</option>
							<option value="36">
								数据库技术课程设计
							</option>
							<option value="37">
								期货与期权市场
							</option>
							<option value="38">
								多媒体技术
							</option>
							<option value="39">
								财务管理软件应用与计算机模拟实践
							</option>
							<option value="40">
								SPSS及其应用
							</option>
							<option value="41">
								会计管理信息系统课程设计
							</option>
							<option value="42">
								管理信息系统开发实践
							</option>
							<option value="43">
								沙盘模拟
							</option>
							<option value="44">
								投资项目可行性研究课程设计
							</option>
							<option value="45">
								电子商务网站开发技术
							</option>
							<option value="46">
								信息系统开发方法与工具
							</option>
							<option value="1412">
								Matlab程序设计基础
							</option>
							<option value="1413">
								电子商务系统建设与管理
							</option>
							<option value="3467">
								计算机网络与电子商务
							</option>
							<option value="3474">
								文献检索与科技论文写作
							</option>
							<option value="3475">
								现代程序设计
							</option>
							<option value="3485">
								计算机程序设计
							</option>
							<option value="3486">
								电子商务概论
							</option>
							<option value="3487">
								ERP原理与实施
							</option>
							<option value="3488">
								管理系统模拟
							</option>
							<option value="3490">
								会计管理信息系统
							</option>
							<option value="3493">
								商务统计
							</option>
							<option value="3494">
								期货与期权
							</option>
							<option value="3495">
								证券投资学
							</option>
							<option value="3496">
								办公软件（OFFICE)高级应用
							</option>
							<option value="3497">
								心理健康测试
							</option>
							<option value="3498">
								创新创业大赛
							</option>
							<option value="3500">
								成本会计
							</option>
							<option value="3501">
								商业银行业务模拟
							</option>
						</select>
					</TD>
					<TD style="HEIGHT: 28px"></TD>
					<TD style="HEIGHT: 28px"></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 31px">
						实验要求：
					</TD>
					<TD style="HEIGHT: 31px">
						<select name="lab$require" id="ddlRequire"
							style="height: 24px; width: 104px;">
							<option value="0">
								请选则实验要求
							</option>
							<option value="1">
								必修
							</option>
							<option value="2">
								选修
							</option>
							<option value="3">
								其他
							</option>

						</select>
					</TD>
					<TD style="HEIGHT: 31px">
						实验者类别
					</TD>
					<TD style="HEIGHT: 31px">
						<select name="lab$category" id="ddlCategory" style="width: 104px;">
							<option value="0">
								请选择实验者类别
							</option>
							<option value="1">
								博士生
							</option>
							<option value="2">
								硕士生
							</option>
							<option value="3">
								本科生
							</option>
							<option value="4">
								专科生
							</option>
							<option value="5">
								教师
							</option>
							<option value="6">
								其他
							</option>

						</select>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 30px">
						实验者人数：
					</TD>
					<TD style="HEIGHT: 30px">
						<input name="lab$count" type="text" value="0" id="txtCount"
							style="width: 105px;" />
						<span id="CompareValidator1"
							style="color: Red; visibility: hidden;">必须为数字</span>
						<span id="RequiredFieldValidator2"
							style="color: Red; visibility: hidden;">不能为空</span>
					</TD>
					<TD style="HEIGHT: 30px">
						每组人数
					</TD>
					<TD style="HEIGHT: 30px">
						<input name="lab$PerCount" type="text" value="1" id="txtPerCount" />
						<span id="CompareValidator2"
							style="color: Red; visibility: hidden;">必须为数字</span>
						<span id="RequiredFieldValidator1"
							style="color: Red; visibility: hidden;">不能为空</span>
					</TD>
				</TR>
				<TR>
					<TD colSpan="4">
						<BR>
						周次实验安排:
						<br>
						<br>
					</TD>
				</TR>
				<TR>
					<TD colSpan="4">
						<DIV align="center">
							<input type="submit" name="btnApply" value="提交申请"
								id="btnApply" style="width: 72px;" />
						</DIV>
					</TD>
				</TR>
			</TABLE>

			<script type="text/javascript">
//<![CDATA[
var Page_Validators =  new Array(document.getElementById("CompareValidator1"), document.getElementById("RequiredFieldValidator2"), document.getElementById("CompareValidator2"), document.getElementById("RequiredFieldValidator1"));
//]]>
</script>

			<script type="text/javascript">
//<![CDATA[
var CompareValidator1 = document.all ? document.all["CompareValidator1"] : document.getElementById("CompareValidator1");
CompareValidator1.controltovalidate = "txtCount";
CompareValidator1.errormessage = "必须为数字";
CompareValidator1.type = "Integer";
CompareValidator1.evaluationfunction = "CompareValidatorEvaluateIsValid";
CompareValidator1.operator = "DataTypeCheck";
var RequiredFieldValidator2 = document.all ? document.all["RequiredFieldValidator2"] : document.getElementById("RequiredFieldValidator2");
RequiredFieldValidator2.controltovalidate = "txtCount";
RequiredFieldValidator2.errormessage = "不能为空";
RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
RequiredFieldValidator2.initialvalue = "";
var CompareValidator2 = document.all ? document.all["CompareValidator2"] : document.getElementById("CompareValidator2");
CompareValidator2.controltovalidate = "txtPerCount";
CompareValidator2.errormessage = "必须为数字";
CompareValidator2.type = "Integer";
CompareValidator2.evaluationfunction = "CompareValidatorEvaluateIsValid";
CompareValidator2.operator = "DataTypeCheck";
var RequiredFieldValidator1 = document.all ? document.all["RequiredFieldValidator1"] : document.getElementById("RequiredFieldValidator1");
RequiredFieldValidator1.controltovalidate = "txtPerCount";
RequiredFieldValidator1.errormessage = "不能为空";
RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
RequiredFieldValidator1.initialvalue = "";
//]]>
</script>


			<script type="text/javascript">
//<![CDATA[

var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        //]]>
</script>
		</form>
	</body>

</html>
