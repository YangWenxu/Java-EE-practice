<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'handle.jsp' starting page</title>
    
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
	<%
	    String[] ball_new=request.getParameterValues("ball");
		String[] meet_new=request.getParameterValues("meet");
		String[] ball_old=(String[])session.getAttribute("ball");
		String[] meet_old=(String[])session.getAttribute("meet");
		session.setAttribute("ball",ball_new);
		session.setAttribute("meet",meet_new);
	%>
	提交成功
	<br>
	<a href="buy2.jsp">买球</a>
  	<a href="buy1.jsp">买肉</a>
  	<a href="display.jsp">查看购物车</a>
  </body>
</html>
