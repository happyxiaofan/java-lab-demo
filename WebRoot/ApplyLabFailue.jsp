<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script type="text/javascript" language="javascript">
			alert("您申请的实验室已被占用，申请失败！");
			window.location.href="lab/ApplyLabDetails.jsp";
</script>	