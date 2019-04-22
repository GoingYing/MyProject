<%@ page import = "java.sql.*" import = "SQLConnect.ConnectionSQL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中国英语新词检索系统</title>
</head>
<body>
<table border = "1">
<tr>
<th>平台介绍</th>
<td>123</td>
</tr>
<tr>
<th>当前词汇总数</th>
<%
ConnectionSQL connect = new ConnectionSQL();
Connection conn = connect.getCon();
Statement state = null;
ResultSet rs = null;
int count = 0;

state = conn.createStatement();
String sql = "select * from Search";
rs = state.executeQuery(sql);
//获取每个属性的值
while(rs.next()){
	count++;
}
%>
<td><%=count%></td>
</tr>
<tr>
<th>网站访问数</th>
<td>101</td>
</tr>
<tr>
<th rowspan = "3">同类型网站链接</th>
<td><a href = "https://www.english-corpora.org/now/" target = _blank>NOW Corpus</a></td>
</tr>
<tr>
<td><a href = "http://www.anc.org/" target = _blank>美国国家语料库</a></td>
</tr>
<tr>
<td><a href = "https://corpus.byu.edu/bnc/" target = _blank>英国国家语料库</a></td>
</tr>
</table>
</body>
</html>