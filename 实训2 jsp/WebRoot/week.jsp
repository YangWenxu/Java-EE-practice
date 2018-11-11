<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'week.jsp' starting page</title>

  </head>
  
  <body>
    <script type="text/javascript">
  		var date=new Date();
  		var a=new Array("日","一","二","三","四","五","六");
  		var week=date.getDay();
  		document.write("今天是星期"+a[week]+"，");
  		var hours=date.getHours();
  		if(hours>=6&&hours<12){
  			document.write("上午"+"，");
  		}
  		else if(hours>=12&&hours<18){
  			document.write("下午"+"，");
  		}
  		else{
  			document.write("夜间"+"，");
  		}
  		var minutes=date.getMinutes();
  		document.write(hours+"点"+minutes+"分。");
  	</script>
  </body>
</html>
