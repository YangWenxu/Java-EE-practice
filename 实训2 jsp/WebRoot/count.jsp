<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'count.jsp' starting page</title>
    
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
	 if (application.getAttribute("count") == null) { 
	    application.setAttribute("count", new Integer(0)); 
	 } 
	 Integer count = (Integer) application.getAttribute("count"); 
	 application.setAttribute("count", new Integer(count.intValue() + 1)); 
	 count = (Integer) application.getAttribute("count"); 
 %> 
   <center>这是第<%=count.intValue()%>个访问者</center>
  </body>
</html>
