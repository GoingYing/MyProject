<%@ page import = "java.sql.*" import = "SQLConnect.ConnectionSQL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "Error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String UserName = request.getParameter("username");
String userName = new String (UserName.getBytes("ISO-8859-1"),"UTF-8");
String PassWord = request.getParameter("password");
System.out.println(userName+"  "+PassWord);

ConnectionSQL connect = new ConnectionSQL();
Connection conn = connect.getCon();
Statement stateuser = null;
ResultSet rsuser = null;

int count = 0;
int length = 0;

try{
    stateuser = conn.createStatement();
    String sql = "select * from yonghu";
    rsuser = stateuser.executeQuery(sql);
    
    //核实账号和密码是否正确
    while(rsuser.next()){
    	String user = rsuser.getString("用户名").trim();
    	String pass = rsuser.getString("密码").trim();
    	System.out.println(user+"  "+pass);
    	
    	boolean realuser=user.equals(userName);
    	boolean realpass=pass.equals(PassWord);
        if(realuser&&realpass){
           System.out.println("登陆成功");
           count = 1;
           break;
        }
    }
    if(count == 0){
    	%>
    	<jsp:forward page = "LandingError.jsp"></jsp:forward>
    	<%
    }
}catch(SQLException e) {
    e.printStackTrace();
}finally{
	try{
		if(rsuser != null){
			rsuser.close();
		}
		    if(stateuser != null){
		    	stateuser.close();
		    }
		    if(conn != null){
		    	conn.close();
		    }
	}catch(SQLException e){
	    e.printStackTrace();	
	}
}
%>
</body>
</html>