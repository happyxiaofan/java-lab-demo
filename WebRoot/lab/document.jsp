<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商学院-管理与经济实验中心-教学文档</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="lab/Template068Blank.css" type="text/css" rel="stylesheet">
		<style type="text/css">BODY { MARGIN-TOP: 0px }
		</style>
		<LINK href="lab/style.css" type="text/css" rel="stylesheet">
	</head>
	<body>
		<form name="Form1" method="post" action="document.jsp" id="Form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

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


<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEALq38X2AgKzpKGgDgKjy4vOAgKjy8fNAgKjy8PNAgKjy//NAgKjy/vNAgKjy/fNAgKjy/PNAgK8y8fNAgK9y8vNAgKjy+/NAgK8y8PNAgKaw8v7DwKBmayrBQLL7cazD8WqMMjpzJ3X6cO6jeHbf6cDSxGw" />
</div>
			
 
	<table class="Top" cellspacing="0" cellpadding="0" width="752" align="center">
		<tr>
			<td><img height="108" src="imagesBlank/TopRow1.jpg" width="750" /></td>
		</tr>
	</table>
	<table class="Middle" cellspacing="0" cellpadding="0" width="752" align="center">
		<tr>
			<td width="344"><img src="imagesBlank/Back1.jpg" width="344" height="32" /></td>
			<td width="76"><a href="lab/index.jsp"><img height="32" src="imagesBlank/ButtonHome.gif" width="76" border="0" /></a></td>
			<td width="88"><a href="lab/document.jsp"><img height="32" src="imagesBlank/ButtonCompany.gif" width="88" border="0" /></a></td>
			
   			<td width="92"><a href="lab/openexperiment.htm" ><img height="32" src="imagesBlank/ButtonProducts.gif" width="92" border="0" /></a></td>
			<td width="76"><a href="#" target="_blank"><img height="32" src="imagesBlank/ButtonService.gif" width="76" border="0" /></a></td>
			<td width="75"><a href="#" target="_blank"><img height="32" src="imagesBlank/ButtonLogin.gif" width="74" border="0" /></a></td>
		</tr>
	</table>
	<table class="Middle" cellspacing="0" cellpadding="0" width="752" align="center">
		<tr>
			<td class="Color1"><a href="http://bs.csu.edu.cn" target="_blank"><img height="32" src="imagesBlank/Back3.gif" width="324" border="0" /></a></td>
			<td class="Color1">系别:<select name="Top1$ddlDepts" onchange="javascript:setTimeout('__doPostBack(\'Top1$ddlDepts\',\'\')', 0)" id="Top1_ddlDepts" class="SELECT1" style="width:93px;">
	<option selected="selected" value="0">请选择</option>
	<option value="01">企业管理系          </option>
	<option value="02">信息管理系          </option>
	<option value="03">金融学系            </option>
	<option value="04">财务投资系          </option>
	<option value="05">经济贸易系          </option>
	<option value="06">会计学系            </option>
	<option value="11">行政                </option>
	<option value="20">博士后              </option>
	<option value="07">营销旅游系          </option>
	<option value="12">研究生管理中心      </option>

</select></td>
			<td class="Color1" style="WIDTH: 121px">姓名:<select name="Top1$ddlTeacher" id="Top1_ddlTeacher" class="SELECT1" style="width:81px;">
	<option value="请选择">请选择</option>

</select></td>
			<td class="Color1">密码:</td>
			<td class="Color1"><input name="Top1$txtPassword" type="password" id="Top1_txtPassword" class="INPUT1" style="width:100px;" /></td>
			<td class="Color1">&nbsp;
				<input type="image" name="Top1$ImageButton1" id="Top1_ImageButton1" src="imagesBlank/ButtonGo.gif" style="border-width:0px;" />
				&nbsp;</td>
		</tr>
	</table>
 

			<table class="Middle" cellSpacing="0" cellPadding="0" width="752" align="center" id="Table1">
				<tr height="1">
					<td class="ImageBack" vAlign="top" height="634">
						
<p class="NoBreakBefore"><IMG height="30" src="imagesBlank/Back4.gif" width="130"></p>
<table width="106%">
	<tr>
		<td>
			<div align="center"><A href="lab/SearchLabDistribution.jsp"><IMG src="imagesBlank/anpai1.jpg" width="100" height="20" border="0"></A></div>
		</td>
	</tr>
	<tr>
		<td>
			<div align="center"><A href="lab/SearchLabDistribution.jsp"><IMG src="imagesBlank/Photo4.jpg" width="113" height="77" border="0"></A></div>
		</td>
	</tr>
	<tr>
		<td style="HEIGHT: 22px"><A href="lab/TeacherIndex.jsp"><IMG src="imagesBlank/shenqing.jpg" width="100" height="20" border="0"></A></td>
	</tr>
	<tr>
		<td>
			<div align="center"><A href="TeacherIndex.jsp"><IMG src="imagesBlank/Photo3.jpg" width="113" height="77" border="0"></A></div>
		</td>
	</tr>
	<tr>
		<td><A href="lab/zhidu.jsp"><IMG src="imagesBlank/zhidu.jpg" width="100" height="20" border="0"></A></td>
	</tr>
	<tr>
		<td>
			<div align="center"><A href="lab/zhidu.jsp"><IMG src="imagesBlank/Photo5.jpg" width="109" height="73" border="0"></A></div>
		</td>
	</tr>
	<tr>
		<td><A href="lab/fuwu.jsp"><IMG src="imagesBlank/fuwu1.jpg" width="100" height="20" border="0"></A></td>
	</tr>
	<tr>
		<td>
			<div align="center"><A href="lab/fuwu.jsp"><IMG src="imagesBlank/Photo6.jpg" width="109" height="85" border="0"></A></div>
		</td>
	</tr>
</table>
<p class="DoubleBreakBefore NoBreakAfter" align="center"><FONT face="宋体"></FONT>&nbsp;</p>
<p class="NoBreakBefore" align="center">&nbsp;</p>
<p class="Indented28R Font" align="center"><br>
</p>
<p class="Indented28R Font" align="right">&nbsp;</p>
<p class="Indented28R Font" align="center">&nbsp;</p>
<p class="Indented28R Font" align="right">&nbsp;</p>
<p class="Indented28R Font" align="center"></p>
</TD>
<td>
	<table height="100%" cellSpacing="0" cellPadding="0">
		<tr>
			<td><IMG height="118" src="imagesBlank/Back5.jpg" width="87"></td>
		</tr>
		<tr height="100%">
			<td class="VShadowBack"><FONT face="宋体"></FONT></td>
		</tr>
		<tr>
			<td><IMG height="126" src="imagesBlank/Image.jpg" width="87"></td>
		</tr>
	</table>

					</td>
					<td vAlign="top" width="100%">
						<table width="100%" height="100%" border="0" cellPadding="0" cellSpacing="0" id="Table2">
							<tr>
								<td height="36" valign="top" class="Color2" style="WIDTH: 26px; HEIGHT: 36px">&nbsp;
								</td>
								<td valign="top" class="Color2" style="WIDTH: 562px; HEIGHT: 36px">&nbsp;</td>
								<td valign="top" class="Color2" style="HEIGHT: 36px">&nbsp;</td>
							</tr>
							<tr>
								<td height="604" valign="top" class="Color2" style="WIDTH: 26px">&nbsp;</td>
								<td align="left" valign="top" class="Color2" style="WIDTH: 562px">
									<table id="DataList1" cellspacing="0" border="0" style="width:99%;border-collapse:collapse;">
	<tr>
		<td>
											<font size="3" color="#000099">&gt;&gt;商学院-管理与经济实验中心-教学文档
											</font>
											<br>
											<br>
										</td>
	</tr><tr>
		<td>
											<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="95%" border="0">
												<TR>
													<TD>&nbsp;&nbsp;</TD>
													<TD align="left">-&gt;
														<a id="DataList1_ctl01_HyperLink1" href="News.aspx?Category=实验指导书" style="font-weight:bold;">实验指导书</a></TD>
												</TR>
												<TR>
													<TD></TD>
													<TD>
														<table cellspacing="0" border="0" id="DataList1_ctl01_DataGrid1" style="width:100%;border-collapse:collapse;">
			<tr>
				<td>
																	</td>
			</tr><tr>
				<td>
																		&nbsp;&nbsp;&nbsp;&nbsp;· <A href='Article/Files/Files1.htm' target=_blank>
																			《电子商务解决方案案例分析》实验指导书
																			(2006/5/17) </A>
																	</td>
			</tr><tr>
				<td>
																		&nbsp;&nbsp;&nbsp;&nbsp;· <A href='Article/Files/Files2.htm' target=_blank>
																			《会计管理信息系统》实验指导书
																			(2006/4/29) </A>
																	</td>
			</tr><tr>
				<td>
																		&nbsp;&nbsp;&nbsp;&nbsp;· <A href='Article/Files/Files3.htm' target=_blank>
																			《国际贸易模拟实习》实验指导书
																			(2006/4/29) </A>
																	</td>
			</tr>
		</table></TD>
												</TR>
												<TR>
													<TD>&nbsp;&nbsp;</TD>
													<TD align="right">
														<a id="DataList1_ctl01_Hyperlink2" href="lab/zhidao.jsp">更多</a></TD>
												</TR>
											</TABLE>
										</td>
	</tr><tr>
		<td>
											<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="95%" border="0">
												<TR>
													<TD>&nbsp;&nbsp;</TD>
													<TD align="left">-&gt;
														<a id="DataList1_ctl02_HyperLink1" href="News.aspx?Category=实验教学大纲" style="font-weight:bold;">实验教学大纲</a></TD>
												</TR>
												<TR>
													<TD></TD>
													<TD>
														<table cellspacing="0" border="0" id="DataList1_ctl02_DataGrid1" style="width:100%;border-collapse:collapse;">
			<tr>
				<td>
																	</td>
			</tr><tr>
				<td>
																		&nbsp;&nbsp;&nbsp;&nbsp;· <A href='Article/Files/Files101.htm' target=_blank>
																			《数据库原理及程序设计》实验教学大纲
																			(2006/5/18) </A>
																	</td>
			</tr><tr>
				<td>
																		&nbsp;&nbsp;&nbsp;&nbsp;· <A href='Article/Files/Files102.htm' target=_blank>
																			《统计学原理》实验教学大纲
																			(2006/5/17) </A>
																	</td>
			</tr><tr>
				<td>
																		&nbsp;&nbsp;&nbsp;&nbsp;· <A href='Article/Files/Files103.htm' target=_blank>
																			《信息系统开发环境与工具》实验教学大纲
																			(2006/5/17) </A>
																	</td>
			</tr>
		</table></TD>
												</TR>
												<TR>
													<TD>&nbsp;&nbsp;</TD>
													<TD align="right">
														<a id="DataList1_ctl02_Hyperlink2" href="lab/dagang.jsp">更多</a></TD>
												</TR>
											</TABLE>
										</td>
	</tr>
</table>
								</td>
								<td valign="top" class="Color2">&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			
<table width="752" align="center" cellpadding="0" cellspacing="0" class="Bottom">
	<tr>
		<td class="BarBack"><img src="_blank.gif" width="20" height="1"></td>
		<td class="BarBack" width="100%"><img src="imagesBlank/ButtonContactUs.gif" width="125" height="25"></td>
		<td><a href="#"><img src="imagesBlank/ButtonLinkHome.gif" border="0" width="69" height="25"></a></td>
		<td><a href="#"><img src="imagesBlank/ButtonLinkCompany.gif" border="0" width="81" height="25"></a></td>
		<td><a href="#"><img src="imagesBlank/ButtonLinkProducts.gif" border="0" width="89" height="25"></a></td>
		<td><a href="#"><img src="imagesBlank/ButtonLinkService.gif" border="0" width="80" height="25"></a></td>
		<td><a href="lab/AdminIndex.jsp" target=_blank><img src="imagesBlank/ButtonLinkLogin.gif" border="0" width="68" height="25"></a></td>
		<td><img src="imagesBlank/Back6.gif" width="14" height="25"></td>
	</tr>
</table>

		</form>
	</body>
</html>
