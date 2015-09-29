<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="biz.*,entity.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="dao.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

		<title>实验室安排查询</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<LINK href="lab/Template068Blank.css" type="text/css" rel="stylesheet">
		<LINK href="lab/dis.css" type="text/css" rel="stylesheet">
		<LINK href="lab/style.css" type="text/css" rel="stylesheet">
		<script type="text/javascript"
			src="<%=request.getContextPath() %>/js/distribution.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath() %>/js/ajax.js"></script>
	</head>
	<body>
		<form name="Form1" method="post" action="SearchLabDistribution.jsp"
			id="Form1">

			<table class="Top" cellspacing="0" cellpadding="0" width="752"
				align="center">
				<tr>
					<td>
						<img height="108" src="imagesBlank/TopRow1.jpg" width="750" />
					</td>
				</tr>
			</table>
			<table class="Middle" cellspacing="0" cellpadding="0" width="752"
				align="center">
				<tr>
					<td width="344">
						<img src="imagesBlank/Back1.jpg" width="344" height="32" />
					</td>
					<td width="76">
						<a href="lab/index.jsp"><img height="32"
								src="imagesBlank/ButtonHome.gif" width="76" border="0" /> </a>
					</td>
					<td width="88">
						<a href="lab/document.jsp"><img height="32"
								src="imagesBlank/ButtonCompany.gif" width="88" border="0" /> </a>
					</td>

					<td width="92">
						<a href="lab/openexperiment.htm"><img height="32"
								src="imagesBlank/ButtonProducts.gif" width="92" border="0" /> </a>
					</td>
					<td width="76">
						<a href="#" target="_blank"><img height="32"
								src="imagesBlank/ButtonService.gif" width="76" border="0" /> </a>
					</td>
					<td width="75">
						<a href="#" target="_blank"><img height="32"
								src="imagesBlank/ButtonLogin.gif" width="74" border="0" /> </a>
					</td>
				</tr>
			</table>
			<table class="Middle" cellspacing="0" cellpadding="0" width="752"
				align="center">
				<tr>
					<td class="Color1">
						<a href="http://bs.csu.edu.cn" target="_blank"><img
								height="32" src="imagesBlank/Back3.gif" width="324" border="0" />
						</a>
					</td>
					<td class="Color1">
						系别:
						<select name="Top1_ddlDepts"
							onchange="showSubMenu(this.options[this.options.selectedIndex].value)"
							id="Top1_ddlDepts" class="SELECT1" style="width: 88px;">
							<%
								Iterator it = deptlist.iterator();
								do{
									Dept d = (Dept)it.next();
									//获取Dept对象的编号和名称
									deptID = d.getDeptno();
									//out.print(deptID);
									deptName = d.getDeptname();
							 %>
							<option value="<%=deptID%>"><%=deptName %></option>
							<%
							 	}
							 	while(it.hasNext());
							  %>
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
							<option value="12">
								研究生管理中心
							</option>

						-->
						</select>
					</td>
					<td class="Color1" style="WIDTH: 121px">
						姓名:
						<select name="list" id="" class="SELECT1" style="width: 81px;">
							<option value="请选择">
								请选择
							</option>
						</select>
					</td>
					<td class="Color1">
						密码:
					</td>
					<td class="Color1">
						<input name="Top1$txtPassword" type="password"
							id="Top1_txtPassword" class="INPUT1" style="width: 100px;" />
					</td>
					<td class="Color1">
						&nbsp;
						<input type="image" name="Top1$ImageButton1"
							id="Top1_ImageButton1" src="imagesBlank/ButtonGo.gif"
							style="border-width: 0px;" />
						&nbsp;
					</td>
				</tr>
			</table>


			<table class="Middle" cellSpacing="0" cellPadding="0" width="752"
				align="center" id="Table1">
				<tr height="1">
					<td class="ImageBack" vAlign="top" height="634">

						<p class="NoBreakBefore">
							<IMG height="30" src="imagesBlank/Back4.gif" width="130">
						</p>
						<table width="106%">
							<tr>
								<td>
									<div align="center">
										<A href="lab/SearchLabDistribution.jsp"><IMG
												src="imagesBlank/anpai1.jpg" width="100" height="20"
												border="0"> </A>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div align="center">
										<A href="lab/SearchLabDistribution.jsp"><IMG
												src="imagesBlank/Photo4.jpg" width="113" height="77"
												border="0"> </A>
									</div>
								</td>
							</tr>
							<tr>
								<td style="HEIGHT: 22px">
									<A href="lab/TeacherIndex.jsp"><IMG
											src="imagesBlank/shenqing.jpg" width="100" height="20"
											border="0"> </A>
								</td>
							</tr>
							<tr>
								<td>
									<div align="center">
										<A href="lab/TeacherIndex.jsp"><IMG
												src="imagesBlank/Photo3.jpg" width="113" height="77"
												border="0"> </A>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<A href="lab/zhidu.jsp"><IMG src="imagesBlank/zhidu.jpg"
											width="100" height="20" border="0"> </A>
								</td>
							</tr>
							<tr>
								<td>
									<div align="center">
										<A href="lab/zhidu.jsp"><IMG src="imagesBlank/Photo5.jpg"
												width="109" height="73" border="0"> </A>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<A href="lab/fuwu.jsp"><IMG src="imagesBlank/fuwu1.jpg"
											width="100" height="20" border="0"> </A>
								</td>
							</tr>
							<tr>
								<td>
									<div align="center">
										<A href="lab/fuwu.jsp"><IMG src="imagesBlank/Photo6.jpg"
												width="109" height="85" border="0"> </A>
									</div>
								</td>
							</tr>
						</table>
						<p class="DoubleBreakBefore NoBreakAfter" align="center">
							<FONT face="宋体"></FONT>&nbsp;
						</p>
						<p class="NoBreakBefore" align="center">
							&nbsp;
						</p>
						<p class="Indented28R Font" align="center">
							<br>
						</p>
						<p class="Indented28R Font" align="right">
							&nbsp;
						</p>
						<p class="Indented28R Font" align="center">
							&nbsp;
						</p>
						<p class="Indented28R Font" align="right">
							&nbsp;
						</p>
						<p class="Indented28R Font" align="center"></p>
					</TD>
					<td>
						<table height="100%" cellSpacing="0" cellPadding="0">
							<tr>
								<td>
									<IMG height="118" src="imagesBlank/Back5.jpg" width="87">
								</td>
							</tr>
							<tr height="100%">
								<td class="VShadowBack">
									<FONT face="宋体"></FONT>
								</td>
							</tr>
							<tr>
								<td>
									<IMG height="126" src="imagesBlank/Image.jpg" width="87">
								</td>
							</tr>
						</table>

					</td>
					<td valign="top" width="100%">
						<table cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td height="604" class="Color2">
									<table width="100%" vspace="0" height="100%" align="right"
										cellpadding="0" cellspacing="0">
										<tr>
											<td height="575" align="left" valign="top">
												<table width="100%" height="432" border="0" cellspacing="0">
													<tr>
														<td width="8%" height="64" style="HEIGHT: 64px">
															&nbsp;
														</td>
														<td width="92%" style="HEIGHT: 64px">
															<ul>
																<li id="LinkButton1">
																	<a href="lab/SearchLabDistribution.jsp#"
																		onclick="switchTag('LinkButton1', 'content1')"
																		class="selectli1"> <span class="selectspan1">按实验室查询</span>
																	</a> &nbsp;
																</li>
																<li id="LinkButton2">
																	<a href="lab/SearchLabDistribution.jsp#"
																		onclick="switchTag('LinkButton2', 'content2')"
																		class="selectli2"> <span class="selectspan2">按教师查询</span>
																	</a> &nbsp;
																</li>
																<li id="LinkButton3">
																	<a href="lab/SearchLabDistribution.jsp#"
																		onclick="switchTag('LinkButton3', 'content3')"
																		class="selectli3"> <span class="selectspan3">按班级查询</span>
																	</a> &nbsp;
																</li>
																<li id="LinkButton4">
																	<a href="lab/SearchLabDistribution.jsp#"
																		onclick="switchTag('LinkButton4', 'content4')"
																		class="selectli4"> <span class="selectspan4">按周次查询</span>
																	</a>
																</li>
															</ul>
														</td>
													</tr>

													<tr>

														<td>
															&nbsp;
														</td>
														<td align="left" valign="top" id="TD1">

															<div id="content1">
																<table width="438" border="0" cellpadding="0"
																	cellspacing="0" bordercolor="#999999"
																	style="WIDTH: 438px; HEIGHT: 232px">
																	<tr>
																		<td colspan="4">
																			请输入查询条件：
																		</td>
																	</tr>
																	<tr>
																		<td width="19%">
																			学年：
																		</td>
																		<td width="30%">
																			&nbsp;
																			<select name="ddlYear" id="ddlYear"
																				style="height: 24px; width: 76px;">
																				<option selected="selected" value="2011">
																					2011
																				</option>
																				<option value="2013">
																					2013
																				</option>
																				<option value="2012">
																					2012
																				</option>
																				<option value="2010">
																					2010
																				</option>
																				<option value="2014">
																					2014
																				</option>

																			</select>
																		</td>
																		<td width="24%">
																			学期：
																		</td>
																		<td width="27%">
																			&nbsp;
																			<select name="ddlTerm" id="ddlTerm"
																				style="height: 24px; width: 76px;">
																				<option selected="selected" value="0">
																					上学期
																				</option>
																				<option value="1">
																					下学期
																				</option>

																			</select>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<span id="lblLib">实验室：</span>


																		</td>
																		<td colspan="3">
																			&nbsp;
																			<select name="ddlLib" id="ddlLib"
																				style="height: 24px; width: 122px;">
																				<option selected="selected" value="0">
																					全部
																				</option>
																				<option value="1">
																					管301
																				</option>
																				<option value="6">
																					管304
																				</option>
																				<option value="7">
																					管308
																				</option>
																				<option value="2">
																					管309
																				</option>
																				<option value="3">
																					管310
																				</option>
																				<option value="4">
																					管313
																				</option>

																			</select>



																		</td>
																	</tr>
																	<tr>
																		<td>
																			<FONT face="宋体">&nbsp;</FONT>
																		</td>
																		<TD colSpan="3">
																			&nbsp;
																		</TD>
																	</tr>
																	<tr>
																		<td colspan="4" align="center">
																			&nbsp;
																			<input type="submit" name="btnSubmit" value="搜索"
																				id="btnSubmit" style="width: 83px;" />
																		</td>
																	</tr>
																	<TR>
																		<TD align="center" colSpan="4">
																			<FONT face="宋体">如果没有反应，请检查浏览器是否阻止了弹出窗口！</FONT>
																		</TD>
																	</TR>
																</table>

															</div>

															<div id="content2" class="hidecontent">
																<table width="438" border="0" cellpadding="0"
																	cellspacing="0" bordercolor="#999999"
																	style="WIDTH: 438px; HEIGHT: 232px">
																	<tr>
																		<td colspan="4">
																			请输入查询条件：
																		</td>
																	</tr>
																	<tr>
																		<td width="19%">
																			学年：
																		</td>
																		<td width="30%">
																			&nbsp;
																			<select name="ddlYear" id="ddlYear"
																				style="height: 24px; width: 76px;">
																				<option selected="selected" value="2011">
																					2011
																				</option>
																				<option value="2013">
																					2013
																				</option>
																				<option value="2012">
																					2012
																				</option>
																				<option value="2010">
																					2010
																				</option>
																				<option value="2014">
																					2014
																				</option>

																			</select>
																		</td>
																		<td width="24%">
																			学期：
																		</td>
																		<td width="27%">
																			&nbsp;
																			<select name="ddlTerm" id="ddlTerm"
																				style="height: 24px; width: 76px;">
																				<option selected="selected" value="0">
																					上学期
																				</option>
																				<option value="1">
																					下学期
																				</option>

																			</select>
																		</td>
																	</tr>
																	<tr>
																		<td>


																			<span id="lbTeacher">教师：</span>
																		</td>
																		<td colspan="3">
																			&nbsp;

																			<input name="ddlTeacher" type="text" id="ddlTeacher" />


																		</td>
																	</tr>
																	<tr>
																		<td>
																			<FONT face="宋体">&nbsp;</FONT>
																		</td>
																		<TD colSpan="3">
																			&nbsp;
																		</TD>
																	</tr>
																	<tr>
																		<td colspan="4" align="center">
																			&nbsp;
																			<input type="submit" name="btnSubmit" value="搜索"
																				id="btnSubmit" style="width: 83px;" />
																		</td>
																	</tr>
																	<TR>
																		<TD align="center" colSpan="4">
																			<FONT face="宋体">如果没有反应，请检查浏览器是否阻止了弹出窗口！</FONT>
																		</TD>
																	</TR>
																</table>
															</div>

															<div id="content3" class="hidecontent">
																<table width="438" border="0" cellpadding="0"
																	cellspacing="0" bordercolor="#999999"
																	style="WIDTH: 438px; HEIGHT: 232px">
																	<tr>
																		<td colspan="4">
																			请输入查询条件：
																		</td>
																	</tr>
																	<tr>
																		<td width="19%">
																			学年：
																		</td>
																		<td width="30%">
																			&nbsp;
																			<select name="ddlYear" id="ddlYear"
																				style="height: 24px; width: 76px;">
																				<option selected="selected" value="2011">
																					2011
																				</option>
																				<option value="2013">
																					2013
																				</option>
																				<option value="2012">
																					2012
																				</option>
																				<option value="2010">
																					2010
																				</option>
																				<option value="2014">
																					2014
																				</option>

																			</select>
																		</td>
																		<td width="24%">
																			学期：
																		</td>
																		<td width="27%">
																			&nbsp;
																			<select name="ddlTerm" id="ddlTerm"
																				style="height: 24px; width: 76px;">
																				<option selected="selected" value="0">
																					上学期
																				</option>
																				<option value="1">
																					下学期
																				</option>

																			</select>
																		</td>
																	</tr>
																	<tr>
																		<td>

																			<span id="lbClass">班级：</span>

																		</td>
																		<td colspan="3">
																			&nbsp;


																			<table id="Table1" style="WIDTH: 344px; HEIGHT: 84px"
																				cellspacing="1" cellpadding="1" width="344"
																				border="1">
																				<tr>
																					<TD>
																						<FONT face="宋体">选择专业：</FONT>
																					</TD>
																					<TD>
																						<FONT face="宋体"> <select name="ddlMajor"
																								onchange="javascript:setTimeout('__doPostBack(\'ddlMajor\',\'\')', 0)"
																								id="ddlMajor"
																								style="height: 24px; width: 170px;">
																								<option selected="selected" value="1">
																									信息管理与信息系统
																								</option>
																								<option value="12">
																									硕士研究生
																								</option>
																								<option value="15">
																									经管类
																								</option>
																								<option value="7">
																									金融学
																								</option>
																								<option value="9">
																									会计学（硕士研究生）
																								</option>
																								<option value="6">
																									会计学
																								</option>
																								<option value="8">
																									国际经济与贸易
																								</option>
																								<option value="11">
																									管理科学与工程(硕士研究生）
																								</option>
																								<option value="3">
																									工商管理
																								</option>
																								<option value="4">
																									电子商务
																								</option>
																								<option value="5">
																									财务管理
																								</option>
																								<option value="13">
																									博士研究生
																								</option>
																								<option value="10">
																									MBA
																								</option>
																							</select> </FONT>
																					</TD>
																				</tr>
																				<tr>
																					<TD>
																						<FONT face="宋体">选择年级：</FONT>
																					</TD>
																					<TD>
																						<select name="ddlMajorYear"
																							onchange="javascript:setTimeout('__doPostBack(\'ddlMajorYear\',\'\')', 0)"
																							id="ddlMajorYear"
																							style="height: 24px; width: 121px;">
																							<option selected="selected" value="2014">
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
																							<option value="2009">
																								2009
																							</option>
																							<option value="2008">
																								2008
																							</option>

																						</select>
																					</TD>
																				</tr>
																				<tr>
																					<TD>
																						<FONT face="宋体">选择班级：</FONT>
																					</TD>
																					<TD>
																						<select name="ddlClass" id="ddlClass"
																							style="height: 24px; width: 176px;">
																							<option value="请选择班级">
																								请选择班级
																							</option>
																							<option value="383">
																								信管1401
																							</option>
																							<option value="384">
																								信管1402
																							</option>

																						</select>
																					</TD>
																				</tr>
																			</table>


																		</td>
																	</tr>
																	<tr>
																		<td>
																			<FONT face="宋体">&nbsp;</FONT>
																		</td>
																		<TD colSpan="3">
																			&nbsp;
																		</TD>
																	</tr>
																	<tr>
																		<td colspan="4" align="center">
																			&nbsp;
																			<input type="submit" name="btnSubmit" value="搜索"
																				id="btnSubmit" style="width: 83px;" />
																		</td>
																	</tr>
																	<TR>
																		<TD align="center" colSpan="4">
																			<FONT face="宋体">如果没有反应，请检查浏览器是否阻止了弹出窗口！</FONT>
																		</TD>
																	</TR>
																</table>
															</div>

															<div id="content4" class="hidecontent">
																<table width="438" border="0" cellpadding="0"
																	cellspacing="0" bordercolor="#999999"
																	style="WIDTH: 438px; HEIGHT: 232px">
																	<tr>
																		<td colspan="4">
																			请输入查询条件：
																		</td>
																	</tr>
																	<tr>
																		<td width="19%">
																			学年：
																		</td>
																		<td width="30%">
																			&nbsp;
																			<select name="ddlYear" id="ddlYear"
																				style="height: 24px; width: 76px;">
																				<option selected="selected" value="2011">
																					2011
																				</option>
																				<option value="2013">
																					2013
																				</option>
																				<option value="2012">
																					2012
																				</option>
																				<option value="2010">
																					2010
																				</option>
																				<option value="2014">
																					2014
																				</option>

																			</select>
																		</td>
																		<td width="24%">
																			学期：
																		</td>
																		<td width="27%">
																			&nbsp;
																			<select name="ddlTerm" id="ddlTerm"
																				style="height: 24px; width: 76px;">
																				<option selected="selected" value="0">
																					上学期
																				</option>
																				<option value="1">
																					下学期
																				</option>

																			</select>
																		</td>
																	</tr>
																	<tr>
																		<td>



																			<span id="lblWeek">请选择周次：</span>
																		</td>
																		<td colspan="3">
																			&nbsp;



																			<select name="ddlWeek" id="ddlWeek"
																				style="height: 24px; width: 122px;">
																				<option selected="selected" value="1">
																					1
																				</option>
																				<option value="2">
																					2
																				</option>
																				<option value="3">
																					3
																				</option>
																				<option value="4">
																					4
																				</option>
																				<option value="5">
																					5
																				</option>
																				<option value="6">
																					6
																				</option>
																				<option value="7">
																					7
																				</option>
																				<option value="8">
																					8
																				</option>
																				<option value="9">
																					9
																				</option>
																				<option value="10">
																					10
																				</option>
																				<option value="11">
																					11
																				</option>
																				<option value="12">
																					12
																				</option>
																				<option value="13">
																					13
																				</option>
																				<option value="14">
																					14
																				</option>
																				<option value="15">
																					15
																				</option>
																				<option value="16">
																					16
																				</option>
																				<option value="17">
																					17
																				</option>
																				<option value="18">
																					18
																				</option>
																				<option value="19">
																					19
																				</option>
																				<option value="20">
																					20
																				</option>
																				<option value="21">
																					21
																				</option>
																				<option value="22">
																					22
																				</option>
																			</select>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<FONT face="宋体">&nbsp;</FONT>
																		</td>
																		<TD colSpan="3">
																			&nbsp;
																		</TD>
																	</tr>
																	<tr>
																		<td colspan="4" align="center">
																			&nbsp;
																			<input type="submit" name="btnSubmit" value="搜索"
																				id="btnSubmit" style="width: 83px;" />
																		</td>
																	</tr>
																	<TR>
																		<TD align="center" colSpan="4">
																			<FONT face="宋体">如果没有反应，请检查浏览器是否阻止了弹出窗口！</FONT>
																		</TD>
																	</TR>
																</table>
															</div>
														</td>

													</tr>


													<tr>
														<td>
															&nbsp;
														</td>
														<td>
															&nbsp;
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="16">
									&nbsp;
								</td>
							</tr>
							<tr>
								<td height="12" class="Color4">
									<img src="_blank.gif" width="1" height="12">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>


			<table width="752" align="center" cellpadding="0" cellspacing="0"
				class="Bottom">
				<tr>
					<td class="BarBack">
						<img src="_blank.gif" width="20" height="1">
					</td>
					<td class="BarBack" width="100%">
						<img src="imagesBlank/ButtonContactUs.gif" width="125" height="25">
					</td>
					<td>
						<a href="#"><img src="imagesBlank/ButtonLinkHome.gif"
								border="0" width="69" height="25"> </a>
					</td>
					<td>
						<a href="#"><img src="imagesBlank/ButtonLinkCompany.gif"
								border="0" width="81" height="25"> </a>
					</td>
					<td>
						<a href="#"><img src="imagesBlank/ButtonLinkProducts.gif"
								border="0" width="89" height="25"> </a>
					</td>
					<td>
						<a href="#"><img src="imagesBlank/ButtonLinkService.gif"
								border="0" width="80" height="25"> </a>
					</td>
					<td>
						<a href="lab/AdminIndex.jsp" target=_blank><img
								src="imagesBlank/ButtonLinkLogin.gif" border="0" width="68"
								height="25"> </a>
					</td>
					<td>
						<img src="imagesBlank/Back6.gif" width="14" height="25">
					</td>
				</tr>
			</table>

		</form>


	</body>
</html>
