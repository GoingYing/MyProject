<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
  body{margin:230px}
</style>
<title>Insert title here</title>
</head>
<body>
<div align = "center">
  <form method = "post" action="UserLanding.jsp">
      账户：
  <input type = "text" name = "username" size = "12" maxlength = "6"><p>
      密码：
  <input type = "password" name = "password" size = "12" maxlength = "6"><p>
  <input type = "submit" name = "登陆按钮" value = "登陆">
  <input type = "reset" name = "登陆按钮" value = "取消"><p>
  </form>
<table>
<tr>
<th>
  <form method = "post" action="Help.jsp">
    <input type = "submit" name = "忘记密码按钮" value = "忘记密码">
  </form>
</th>
<th></th>
<th>
  <form method = "post" action="Landing.jsp">
    <input type = "submit" name = "申请账户按钮" value = "申请账户">
  </form>
 </th>
</tr>
</table>
</div>
</body>
</html>