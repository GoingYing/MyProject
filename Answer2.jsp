<%@ page import = "java.sql.*" import = "SQLConnect.ConnectionSQL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "Error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css">
</head>
<body>
<table border = "1" cellspacing = 0>
<tr> 
<td>词语</td>
<td>统计时间</td>
<td>词频</td>
<td>出处</td>
<td>同义词</td>
<td>首次出现于</td>
</tr>

<%
String getTextName2 = request.getParameter("textname2");

if("".equals(getTextName2)){
	  response.sendRedirect("Error.jsp");
}

ConnectionSQL connect = new ConnectionSQL();
Connection conn = connect.getCon();
Statement state = null;
ResultSet rs = null;

try {
    state = conn.createStatement();
    String sql = "select * from Sheet1$";
    rs = state.executeQuery(sql);
    //获取每个属性的值
    while(rs.next()){
    	String word = rs.getString("词语");
    	String register = rs.getString("统计时间");
    	String time = rs.getString("词频");
    	String from = rs.getString("出处");
    	String synonyms = rs.getString("同义词");
    	String first = rs.getString("首次出现于");
    	
    	if(word.equals(getTextName2)){
        %>
        <tr>
           <td><%=word%></td>
           <td><%=time%></td>
           <td><%=register%></td>
           <td><%=from%></td>
           <td><%=synonyms%></td>
           <td><%=first%></td>
        </tr>
        <%
        }
    }

    //System.out.println(count);
} catch (SQLException e) {
    e.printStackTrace();
}finally{
	try{
		if(rs != null){
			rs.close();
		}
		    if(state != null){
		    	state.close();
		    }
		    if(conn != null){
		    	conn.close();
		    }
	}catch(SQLException e){
	    e.printStackTrace();	
	}
}
%>
</table>
</body>
</html>