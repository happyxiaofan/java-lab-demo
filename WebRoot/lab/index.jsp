<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="biz.*,entity.*" %>
<%@ page import="java.sql.*"  %>
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

		<title>商学院实验中心</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link rel="stylesheet" type="text/css" href="styles.css">
		<link href="lab/Template068Blank.css" rel="stylesheet" type="text/css" />
		<link href="lab/news.css" rel="stylesheet" type="text/css" />
		<link href="lab/style.css" type="text/css" rel="stylesheet" />
		<link href="lab/index.css" type="text/css" rel="stylesheet"/>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/ajax.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/form.js"></script>
	</head>
	<body>
		<form name="ctl00" method="post" action="TeacherLoginServlet" id="ctl00">&nbsp; 
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
					<td class="Color1">系别:
						<select name="ddlDepts"
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
						<input name="txtPassword" type="password" id="Top1_txtPassword"
							class="INPUT1" style="width: 100px;" />
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


			<table width="752" align="center" cellpadding="0" cellspacing="0"
				class="Middle">
				<tr height="1">
					<td height="526" valign="top" class="ImageBack">
						<p class="NoBreakBefore">
							<img src="imagesBlank/Back4.gif" width="232" height="30" />
						</p>

						<p class="DoubleBreakBefore NoBreakAfter">
							<a href="lab/introduce.htm" target="_blank"><img
									src="imagesBlank/ChannelParthers.gif" width="137" height="23"
									border="0" /> </a>
						</p>
						<p class="NoBreakBefore" align="right">
							<a href="lab/introduce.htm" target="_blank"><img
									src="imagesBlank/Photo1.jpg" width="161" height="121"
									border="0" /> </a>
						</p>
						<p class="Indented28R Font" align="left">
							<span class="text1"><font color="#666666"></font> </span>&nbsp;
						</p>

						<span class="DoubleBreakBefore NoBreakAfter"> <a
							href="lab/news.jsp"><img
									src="imagesBlank/ChannelParthers1.gif" width="137" height="23"
									border="0" /> </a> </span>
						<br />
						<p class="NoBreakBefore" align="right">
							<a href="lab/news.jsp"><img src="imagesBlank/Photo2.jpg"
									width="161" height="121" border="0" /> </a>
						</p>
						<table width="221" align="center">
							<tr>
								<td width="206" height="122" align="right" valign="top"
									class="text1">
									<table cellspacing="0" border="0" id="IndexNews1_dgNews"
										style="width: 100%; border-collapse: collapse;">
										<tr>
											<td>
												·
												<a href='Article/News/1.htm' target=_blank>[2014/4/17]

													学院网站教职工个人信息注册 </a>
											</td>
										</tr>
										<tr>
											<td>
												·
												<a href='Article/News/2.htm' target=_blank>[2013/6/24]

													人才测评软件培训通知 </a>
											</td>
										</tr>
									</table>
									<font face="宋体"><a href="news.jsp">更多</a> </font>
								</td>
							</tr>
						</table>
						<p class="Indented12L">
							&nbsp;
						</p>
						<p class="Indented12L">
						</p>
						<br>
					</td>
					<td>
						<table cellpadding="0" cellspacing="0" height="100%">
							<tr>
								<td>
									<img src="imagesBlank/Back5.jpg" width="87" height="119" />
								</td>
							</tr>
							<tr height="100%">
								<td class="VShadowBack">age</td>
							</tr>
							<tr>
								<td>
									<img src="imagesBlank/Image.jpg" width="87" height="126" />
								</td>
							</tr>
						</table>
					</td>
					<td valign="top" width="100%">
						<table width="100%" height="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td class="Color2">
									<table cellpadding="0" cellspacing="0" width="100%">
										<tr>
											<td>
												<img src="_blank.gif" width="18" height="8" />
											</td>
											<td>
												<table width="100%" height="341" cellpadding="0"
													cellspacing="0">
													<tr>
														<td height="35">
															<table width="100%" height="74" cellpadding="0"
																cellspacing="0">
																<tr>
																	<td width="100%" height="52">
																		<div align="left" class="Top">
																			<p>
																				&nbsp;
																			</p>
																			<p>
																				<a href="lab/SearchLabDistribution.jsp"><img
																						src="imagesBlank/HeaderWelcometo.gif" alt=""
																						width="100" height="25" border="0" align="bottom" />
																				</a>
																			</p>
																		</div>
																	</td>
																	<td>
																		<p>
																			&nbsp;
																		</p>
																		<p>
																			<a href="lab/SearchLabDistribution.jsp"><img
																					src="imagesBlank/More.gif" border="0" width="13"
																					height="9" /> </a>
																		</p>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td height="117">
															<table cellpadding="0" cellspacing="0">
																<tr>
																	<td width="117" height="92" valign="top">
																		<p>
																			<a href="lab/SearchLabDistribution.jsp"><img
																					src="imagesBlank/Photo4.jpg" width="113"
																					height="77" border="0" /> </a>
																		</p>
																	</td>
																	<td width="267">
																		<table width="229" align="center">
																			<tr>
																				<td width="221">
																					<p>
																						<span class="text1"><font color="#666666">
																						</font> </span><span class="test"><a
																							href="lab/SearchLabDistribution.jsp"><font
																								color="#666666">“实验安排查询”为您提供方便快捷的实验室使用情况及每周</font>、<font
																								color="#666666">每天实验的安排情况</font>。</a> </span>
																					</p>
																				</td>
																			</tr>
																		</table>
																		<p>
																			&nbsp;
																		</p>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td width="100%" class="HSeparatorBack">
															<img src="_blank.gif" width="1" height="1" />
														</td>
													</tr>
													<tr>
														<td height="47">
															<table cellpadding="0" cellspacing="0" width="100%">
																<tr>
																	<td width="100%" height="38">
																		<a href="lab/TeacherIndex.jsp"><img
																				src="imagesBlank/HeaderAboutUs.gif" width="100"
																				height="25" border="0"></img> </a>
																		<br />
																	</td>
																	<td>
																		<a href="lab/TeacherIndex.jsp"><img
																				src="imagesBlank/More.gif" border="0" width="13"
																				height="9" /> </a>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td>
															<table width="386" cellpadding="0" cellspacing="0">
																<tr>
																	<td width="126" height="93" valign="top">
																		<a href="lab/TeacherIndex.jsp"><img
																				src="imagesBlank/Photo3.jpg" width="113" height="77"
																				border="0" /> </a>
																		<br />
																	</td>
																	<td width="194" class="test">
																		<table width="210" align="center">
																			<tr>
																				<td width="202" height="39" class="text1">
																					<p>
																						<span class="test"><a
																							href="lab/TeacherIndex.jsp"><font
																								color="#666666">您可以通过“实验申请”功能，在线方便快捷地提交实验申请表</font>。</a>
																						</span>
																					</p>
																					<p class="test">
																						<font face="宋体"></font>&nbsp;
																					</p>
																				</td>
																			</tr>
																		</table>
																		<p class="text1">
																			<font color="#333333"><br /> </font>
																		</p>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
											<td>
												<img src="_blank.gif" width="18" height="1" />
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table width="100%" height="100%" cellpadding="0"
										cellspacing="0">
										<tr height="1">
											<td width="4%" height="174" class="Color3">
												<img src="_blank.gif" width="18" height="8" />
											</td>

											<td width="189" bordercolor="#000000" class="Color3">
												<p>
													<font face="宋体"> </font><a href="lab/zhidu.jsp"><br />
														<img src="imagesBlank/News.gif" width="80" height="20"
															border="0" /> </a>
												</p>
												<p>
													<a href="lab/zhidu.jsp"><img
															src="imagesBlank/Photo5.jpg" width="88" height="65"
															border="0" /> </a>
												</p>
												<p>
													&nbsp;
												</p>

												<p>
													&nbsp;
												</p>
												<br />
											</td>
											<td width="18%" class="Color3">
												<table width="61" height="100%" align="left" cellpadding="0"
													cellspacing="0">
													<tr>
														<td width="59">
															<img src="_blank.gif" width="1" height="24" />
														</td>
													</tr>
													<tr height="100%">
														<td class="VSeparatorBack">
															&nbsp;
														</td>
													</tr>
													<tr>
														<td>
															<img src="_blank.gif" width="1" height="24" />
														</td>
													</tr>
												</table>
											</td>
											<td width="40%" class="Color3">
												<p>
													&nbsp;
												</p>
												<p>
													<a href="lab/fuwu.jsp"><img src="imagesBlank/News1.gif"
															width="80" height="20" border="0" /> </a>
												</p>
												<p>
													<a href="lab/fuwu.jsp"><img
															src="imagesBlank/Photo6.jpg" width="88" height="65"
															border="0" /> </a>
												</p>
												<p>
													<font face="宋体"></font>&nbsp;
												</p>

												<p class="Indented40R">
													&nbsp;
												</p>
												<br />
											</td>
										</tr>
									</table>
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
						<img src="_blank.gif" width="20" height="1" />
					</td>
					<td class="BarBack" width="100%">
						<img src="imagesBlank/ButtonContactUs.gif" width="125" height="25" />
					</td>
					<td>
						<a href="#"><img src="imagesBlank/ButtonLinkHome.gif"
								border="0" width="69" height="25" /> </a>
					</td>
					<td>
						<a href="#"><img src="imagesBlank/ButtonLinkCompany.gif"
								border="0" width="81" height="25" /> </a>
					</td>
					<td>
						<a href="#"><img src="imagesBlank/ButtonLinkProducts.gif"
								border="0" width="89" height="25" /> </a>
					</td>
					<td>
						<a href="#"><img src="imagesBlank/ButtonLinkService.gif"
								border="0" width="80" height="25" /> </a>
					</td>
					<td>
						<a href="lab/AdminIndex.jsp" target=_blank><img
								src="imagesBlank/ButtonLinkLogin.gif" border="0" width="68"
								height="25" /> </a>
					</td>
					<td>
						<img src="imagesBlank/Back6.gif" width="14" height="25" />
					</td>
				</tr>
			</table>

		</form>

	</body>
</html>
