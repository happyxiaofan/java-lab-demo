<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商学院-管理与经济实验中心-学院动态</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR" />
		<meta content="C#" name="CODE_LANGUAGE" />
		<meta content="JavaScript" name="vs_defaultClientScript" />
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
		<link href="lab/Template068Blank.css" type="text/css" rel="stylesheet" />
		<style type="text/css">BODY { MARGIN-TOP: 0px }</style>
		<link href="lab/style.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
		<form name="Form1" method="post" action="News.aspx?Category=%u5b66%u9662%u52a8%u6001" id="Form1">
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

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEALNv+jhDQKzpKGgDgKjy4vOAgKjy8fNAgKjy8PNAgKjy//NAgKjy/vNAgKjy/fNAgKjy/PNAgK8y8fNAgK9y8vNAgKjy+/NAgK8y8PNAgKaw8v7DwKBmayrBQLL7cazD5cAmZUh+Gd1QcKOiMVltMt6Qr4a" />
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
				<input type="image" name="Top1$ImageButton1" id="Top1_ImageButton1" src="imagesBlank/ButtonGo.gif" style="border-width:0px;" />&nbsp;</td>
		</tr>
	</table>
 

			<table class="Middle" cellspacing="0" cellpadding="0" width="752" align="center">
				<tr>
					<td class="ImageBack" valign="top" height="634">
						
<p class="NoBreakBefore"><img height="30" src="imagesBlank/Back4.gif" width="232" /></p>
<table width="106%">
	<tr>
		<td>
			<div align="center"><a href="lab/SearchLabDistribution.aspx"><img src="imagesBlank/anpai1.jpg" width="100" height="20" border="0" /></a></div>
		</td>
	</tr>
	<tr>
		<td>
			<div align="center"><a href="lab/SearchLabDistribution.aspx"><img src="imagesBlank/Photo4.jpg" width="113" height="77" border="0" /></a></div>
		</td>
	</tr>
	<tr>
		<td style="HEIGHT: 22px"><div align="center"><a href="lab/TeacherIndex.jsp"><img src="imagesBlank/shenqing.jpg" width="100" height="20" border="0" /></a></div>
		</td>
	</tr>
	<tr>
		<td>
			<div align="center"><a href="lab/TeacherIndex.jsp"><img src="imagesBlank/Photo3.jpg" width="113" height="77" border="0" /></a></div>
		</td>
	</tr>
	<tr>
		<td><div align="center"><a href="lab/zhidu.htm"><img src="imagesBlank/zhidu.jpg" width="100" height="20" border="0" /></a></div></td>
	</tr>
	<tr>
		<td>
			<div align="center"><a href="lab/zhidu.htm"><img src="imagesBlank/Photo5.jpg" width="109" height="73" border="0" /></a></div>
		</td>
	</tr>
	<tr>
		<td><div align="center"><a href="lab/fuwu.htm"><img src="imagesBlank/fuwu1.jpg" width="100" height="20" border="0" /></a></div></td>
	</tr>
	<tr>
		<td>
			<div align="center"><a href="lab/fuwu.htm"><img src="imagesBlank/Photo6.jpg" width="109" height="85" border="0" /></a></div>
		</td>
	</tr>
</table>
<p class="DoubleBreakBefore NoBreakAfter" align="center"><font face="宋体"></font>&nbsp;</p>
<p class="NoBreakBefore" align="center">&nbsp;</p>
<p class="Indented28R Font" align="center"><br />
</p>
<p class="Indented28R Font" align="right">&nbsp;</p>
<p class="Indented28R Font" align="center">&nbsp;</p>
<p class="Indented28R Font" align="right">&nbsp;</p>
<p class="Indented28R Font" align="center"></p>
</td>
<td>
	<table height="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td><img height="118" src="imagesBlank/Back5.jpg" width="87" /></td>
		</tr>
		<tr height="100%">
			<td class="VShadowBack"><font face="宋体"></font></td>
		</tr>
		<tr>
			<td><img height="126" src="imagesBlank/Image.jpg" width="87" /></td>
		</tr>
	</table>

					</td>
					<td valign="top" width="100%">
						<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="34" valign="top" class="Color2" style="width: 36px; height: 34px">&nbsp;
								</td>
								<td valign="top" class="Color2" style="width: 562px; height: 34px">&nbsp;</td>
								<td valign="top" class="Color2" style="height: 34px">&nbsp;</td>
							</tr>
							<tr>
								<td height="604" valign="top" class="Color2" style="width: 36px">&nbsp;</td>
								<td align="left" valign="top" class="Color2" style="width: 562px">
									<table cellspacing="0" border="0" id="DataGrid1" style="width:100%;border-collapse:collapse;">
	<tr>
		<td>
													<font size="3" color="#000099">&gt;&gt;商学院-管理与经济实验中心-学院动态
													</font>
													<br />
													<br />
												</td>
	</tr><tr>
		<td>
													&nbsp;&nbsp;&nbsp;&nbsp;· <a href='Article/News/News1.htm' target=_blank>
														[2014/4/17]
														学院网站教职工个人信息注册
													</a>
												</td>
	</tr><tr>
		<td>
													&nbsp;&nbsp;&nbsp;&nbsp;· <a href='Article/News/News2.htm' target=_blank>
														[2013/6/24]
														人才测评软件培训通知
													</A>
												</td>
	</tr><tr>
		<td>
													&nbsp;&nbsp;&nbsp;&nbsp;· <a href='Article/News/News3.htm' target=_blank>
														[2006/12/28]
														龙语财经信息分析系统试用通知
													</A>
												</td>
	</tr><tr>
		<td>
													&nbsp;&nbsp;&nbsp;&nbsp;· <a href='Article/News/News4.htm' target=_blank>
														[2006/11/23] 
														关于开展“金融信息系统”培训的通知 
													</A>
												</td>
	</tr>
</table>
									<div align=right>
<!------------------------------ AspNetPager V4.3 Start ------------------------------>
<!-------------------- Copyright:2003 Webdiyer(www.webdiyer.com) --------------------->
<div id="AspNetPager1" style="width:95%;">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td valign="bottom" align="left" nowrap="true" style="width:40%;">记录总数：<font color="blue"><b>4</b></font> 总页数：<font color="blue"><b>1</b></font> 当前页：<font color="red"><b>1</b></font></td><td valign="bottom" align="notset" nowrap="true" class="" style="width:60%;"><a disabled="true"><font face="webdings">9</font></a><span style="width:5px;"></span><a disabled="true"><font face="webdings">3</font></a><span style="width:5px;"></span><font style="font-weight:Bold;color:red;">1</font><span style="width:5px;"></span><a disabled="true"><font face="webdings">4</font></a><span style="width:5px;"></span><a disabled="true"><font face="webdings">:</font></a><span style="width:5px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;跳转到<input type="text" value="1" readonly="true" name="AspNetPager1_input" onkeydown="if(event.keyCode==13){if(doCheck(document.all['AspNetPager1_input']))__doPostBack('AspNetPager1',document.all['AspNetPager1_input'].value);else{event.returnValue=false;}}" style="width:30px;" />页&nbsp;<input type="submit" name="AspNetPager1" value="go" disabled="true" onclick="return doCheck(document.all['AspNetPager1_input'])" /></td>
		</tr>
	</table>
</div>
<!------------------------------- AspNetPager V4.3 End -------------------------------->

									</div>
								</td>
								<td valign="top" class="Color2">&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			
<table width="752" align="center" cellpadding="0" cellspacing="0" class="Bottom">
	<tr>
		<td class="BarBack"><img src="_blank.gif" width="20" height="1" /></td>
		<td class="BarBack" width="100%"><img src="imagesBlank/ButtonContactUs.gif" width="125" height="25" /></td>
		<td><a href="#"><img src="imagesBlank/ButtonLinkHome.gif" border="0" width="69" height="25" /></a></td>
		<td><a href="#"><img src="imagesBlank/ButtonLinkCompany.gif" border="0" width="81" height="25" /></a></td>
		<td><a href="#"><img src="imagesBlank/ButtonLinkProducts.gif" border="0" width="89" height="25" /></a></td>
		<td><a href="#"><img src="imagesBlank/ButtonLinkService.gif" border="0" width="80" height="25" /></a></td>
		<td><a href="lab/AdminIndex.jsp" target=_blank><img src="imagesBlank/ButtonLinkLogin.gif" border="0" width="68" height="25" /></a></td>
		<td><img src="imagesBlank/Back6.gif" width="14" height="25" /></td>
	</tr>
</table>

		</form>
	</body>
</html>
