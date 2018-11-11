<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	Date now = new Date();
	int hours = now.getHours();
	int minutes = now.getMinutes();
	int seconds = now.getSeconds();
	out.println("服务器时间:" + hours + ":" +minutes + ":" + seconds);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'time.jsp' starting page</title>
    
	
  </head>
  
  <body>
    <script language="JavaScript">
    	var dnow = new Date();
    	dhours = dnow.getHours();
    	dminutes = dnow.getMinutes();
    	dseconds = dnow.getSeconds();
    	document.write("<br>浏览器时间:"+dhours + ":" + dminutes + ":" +dseconds);
    </script>
  </body>
</html>
