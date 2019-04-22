<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<br><br><br>
<form method = "post" action="Answer1.jsp" target = "answer">
词频查询<p>
  <input type = "text" name = "textname1" size = "12" maxlength = "50">
  <input type = "submit" name = "search1" value = "搜索">
</form>

<form method = "post" action="Answer2.jsp" target = "answer">
同义词搜索<p>
  <input type = "text" name = "textname2" size = "12" maxlength = "50">
  <input type = "submit" name = "search2" value = "搜索">
</form>

<form method = "post" action="Answer3.jsp" target = "answer">
模糊查询<p>
  <input type = "text" name = "textname3" size = "12" maxlength = "50">
  <input type = "submit" name = "search3" value = "搜索">
</form>

<form method = "post" action="Answer4.jsp" target = "answer">
每年度的新词总结：<p>
  <select name = "selectyear" style="width:106px">
   <option value = "2015" selected = "selected">  2015  </option>
   <option value = "2016">  2016  </option>
   <option value = "2017">  2017  </option>
   <option value = "2018">  2018  </option>
  </select>
  <input type = "submit" name = "search4" value = "搜索">
</form>
</center>
</body>
</html>