<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buy2.jsp' starting page</title>
    
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
  
    <p>各类球类大甩卖，一律八块: </p>
	<form action="handle.jsp" method="post">
	    <input type="checkbox" name="ball" value="basketball">篮球 <br>
        <input type="checkbox" name="ball" value="football">足球 <br>
        <input type="checkbox" name="ball" value="volleyball">排球 <br>
        <input type="submit" value="提交">&nbsp;<input type="reset" value="全部重写"> &nbsp;
	</form>
    <a href="./buy1.jsp">买点别的</a> &nbsp;
    <a href="./display.jsp">查看购物车</a> &nbsp;
  </body>
</html>
