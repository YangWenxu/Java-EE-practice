<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'display.jsp' starting page</title>
    
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
  	<p>你选择的结果是：</p>
  	<br>
  	
  	<%
  		String[] ball=(String[])session.getAttribute("ball");
  		String[] meet=(String[])session.getAttribute("meet");
  		if(ball!=null){
  			for(int i=0;i<ball.length;i++){
  				if(ball[i]==null){continue;}
  				if(ball[i].equals("basketball")){out.print("篮球<br>");}
  				if(ball[i].equals("football")){out.print("足球<br>");}
  				if(ball[i].equals("volleyball")){out.print("排球<br>");}
  			}
  		}
  		if(meet!=null){
  			for(int j=0;j<meet.length;j++){
  				if(meet[j]==null){continue;}
  				if(meet[j].equals("pork")){out.print("猪肉<br>");}
  				if(meet[j].equals("beef")){out.print("牛肉<br>");}
  				if(meet[j].equals("mutton")){out.print("羊肉<br>");}
  			}
  		}
  	%>
  	
  
  	<a href="buy2.jsp">去买球</a>
  	<a href="buy1.jsp">去买肉</a>
  </body>
</html>
