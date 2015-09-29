<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>实验申请</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="lab/style.css">
	

  </head>
  
  <body style="background-color:#66FFFF">
  <table width="568" border="2" cellpadding="0" cellspacing="0" bordercolor="#000000">
  	<tr> <td colspan="4">申请实验室</td></tr>
    <tr>
      <td width="107">学年</td>
      <td width="169">&nbsp;</td>
      <td width="81">学期</td>
      <td width="199">&nbsp;</td>
    </tr>
    <tr>
      <td>星期</td>
      <td>&nbsp;</td>
      <td>节次</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>申请周</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4">选择实验室</td>
    </tr>
    <tr>
      <td colspan="4"><table width="419" border="1">
        <tr>
          <td width="40">选择</td>
          <td width="150">实验室</td>
          <td width="75">容纳人数</td>
          <td width="80">选择班级</td>
		  <td width="40">操作</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
		  <td>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td>课程</td>
      <td><select>
	  <option></option>
	  </select></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>实验要求</td>
      <td><select>
	  <option></option>
	  </select></td>
      <td>实验者类别</td>
      <td><select>
	  <option></option>
	  </select></td>
    </tr>
    <tr>
      <td>实验者人数</td>
      <td><input type="text"></td>
      <td>每组人数</td>
      <td><input type="text"></td>
    </tr>

    <tr>
      <td colspan="4"><input type="submit" value="提交申请"></td>
    </tr>
  </table>
  
  </body>
</html>
