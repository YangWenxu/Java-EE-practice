<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
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
    <form action = "post.jsp" onsubmit = "return check()">
    	用户名: <input type="text" name = "username" id = "username" ><br>
    	密码: <input type="password" name ="password" id= "password"><br>
    	性别: <input type="radio">男 
    		 <input type="radio">女 <br>
    	籍贯: <select name="s1">
    			<option>北京</option>
    			<option>上海</option>
    	     </select> <br>
    	出生年月:<input type="date" name="date" id="date"> <br>
    	爱好: <input type="text" id="hobbit"> <br>
    	身高: <input type=" number" id="tall"> <br>
    	邮箱: <input type="email" id="email"> <br>
    	手机: <input type="number" id="tel"> <br>
    	个人手机:<textarea name="intro" id="intro"></textarea> <br>
    	
    	<input type="submit" name="submit" value="submit">
    </form>
    <script>
    	function check() {
    		var user = document.getElementById('username').value;
    		var tel = document.getElementById('tel').value;
    		var email = document.getElementById('email').value;
    		if(user.length<6 || user.length>10){
    			alert("用户名长度应该在6-10之间");
    			return false;
    		}
    		if(!((user.charAt(0) >= 'a'&& user.charAt(0)<='z') || (user.charAt(0)>='A' && user.charAt(0)<'Z'))) {
    			alert("用户名的开头应该是字母");
    			return false;
    		}
    		if(tel.length !==11) {
    			alert("电话号码的长度应该是11位");
    			return false;
    		}
    		if(email == null || email === ''){
    			alert("邮箱不能是空");
    			return false;
    		}
    	}
    </script>
  </body>
</html>
