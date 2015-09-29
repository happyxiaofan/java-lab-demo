<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script type="text/javascript" language="javascript">
			alert("您的审核已被确认");
			window.location.href="lab/UncheckApplyLabList.jsp";
</script>	