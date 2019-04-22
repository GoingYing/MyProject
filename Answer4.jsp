<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String SelectedYear = request.getParameter("selectyear");
//System.out.println(SelectedYear);

switch(SelectedYear)  //根据获取到的数据，跳转到相应的年度搜索文件
{
case "2015":
  response.sendRedirect("2015.jsp");
  break;
case "2016":
  response.sendRedirect("2015.jsp");
  break;
case "2017":
  response.sendRedirect("2017.jsp");
  break;
default:
	response.sendRedirect("2018.jsp");
}

%>
</body>
</html>