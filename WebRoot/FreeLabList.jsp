<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'FreeLabList.jsp' starting page</title>
    
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
    <table>
    	<tr>
    		<td>周次</td>
    		<td>空闲实验室</td>
    	</tr>
    	<tr>
    		<td>
    			<%
					request.setCharacterEncoding("utf-8");
					String[] weeks = (String[])request.getSession().getAttribute("weeks");
					//只有当weeks的长度不等于0的时候才显示具体的周次
					if(weeks.length!=0){
						for(int i = 0;i<weeks.length-1;i++){
							out.print(weeks[i]+"、");
						}
						out.print(weeks[weeks.length-1]+"周");
					}
				 %> 
    		</td>
    		<td>2</td>
    	</tr>
    </table>
  </body>
</html>
