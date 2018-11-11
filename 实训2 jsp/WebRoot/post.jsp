<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<% 
	request.setCharacterEncoding("GBK");
  	response.setCharacterEncoding("GBK");
  	String username=request.getParameter("username");
	try {
		username.trim();
	}catch (Exception e) {
		throw new Exception("请输入username");
	}
	
	String password=request.getParameter("password");
	try {
		password.trim();
	}catch (Exception e) {
		throw new Exception("请输入password");
	}
	String sex=request.getParameter("sex");
	String s1=request.getParameter("s1");
		if(s1.equals("bj")){s1="北京";}
		if(s1.equals("sh")){s1="上海";}
    String date = request.getParameter("date");
    String hobbit = request.getParameter("hobbit");
    String tall_ = request.getParameter("tall");
    String email = request.getParameter("email");
    String tel = request.getParameter("tel");
    String intro = request.getParameter("intro");
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'post.jsp' starting page</title>
    

  </head>
  
  <body>
    <ul>
  		<li>用户名：<%=username%>
  		<li>密码：<%=password%>
  		<li>籍贯：<%=s1%>
  		<li>出生年月：<%=date%>月
  		<li>性别：<%=sex%>
  		<li>爱好：<%=hobbit%>
  		<li>身高：<%=tall_%>米
  		<li>邮箱：<%=email%>
  		<li>手机：<%=tel%>
  		<li>个人介绍：<%=intro%>
    </ul>
  </body>
</html>
