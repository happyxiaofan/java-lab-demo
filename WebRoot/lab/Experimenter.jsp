<%@page import="entity.Experimenter"%>
<%@page import="biz.ExperimenterService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("gb2312");
	
	ExperimenterService experimenterService=new ExperimenterService();
	List ExperimenterList=experimenterService.getAllExperimenter();
%>
<!DOCType HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验者类别</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" Experimenter="text/css" href="lab/style.css">
	

  </head>
  
  <body>
    <script type="text/javascript">
		function del(Experimenterno){
			if(window.confirm("确定删除吗?")){
			window.location="ExperimenterServlet?Experimenterno="+Experimenterno;
			}
		}
	</script>
  <h2 align="left" style="background-color:#33FFFF">实验者类别管理</h2>
  <table border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr style="background-color:#33FFFF">
  		<td width="103"> 实验者类别编号  </td>
  		<td width="111"> 实验者类别名称 </td>
  		<td width="87"> 操作 </td>
  	</tr>
    	<%
		if (ExperimenterList != null) {
			for (int i = 0; i < ExperimenterList.size(); i++) {
			Experimenter Experimenter=(Experimenter)ExperimenterList.get(i);		
			String Experimenterno=Experimenter.getExperimenterno();
			String Experimentername=Experimenter.getExperimentername();
		%>							
		<tr>
			<td><%=Experimenterno %></td>
			<td><%=Experimentername %></td>
			<td>
				<a onClick="del(<%=Experimenterno%>)">删除</a>
			</td>
		</tr>
		<%}
		}else{} %>
  </table>	
  		  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <form method="post" action="ExperimenterServlet" id="form1">
  <table width="314" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
    <tr>
      <td width="60">编号：</td>
      <td width="248"><input id="experimenterNum" name="experimenterNum" type="text"/></td>
    </tr>
    <tr>
      <td>名称：</td>
      <td><input id="experimenterMing" name="experimenterMing" type="text"></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" value="确定" />
	  <input type="reset" value="取消" />
	  </td>
    </tr>
  </table>
 </form>
  </body>
</html>
