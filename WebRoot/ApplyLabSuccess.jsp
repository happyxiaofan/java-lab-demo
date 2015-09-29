<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script type="text/javascript" language="javascript">
			alert("您的申请已提交，请耐心等待审核结果O(∩_∩)O~");
			window.location.href="lab/ApplyLabDetails.jsp";
</script>	