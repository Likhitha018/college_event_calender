<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String n1=request.getParameter("n1");
	String n2=request.getParameter("n2");
	String id=session.getAttribute("fid").toString();
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
	PreparedStatement ptmt=con.prepareStatement("update faculty set Password='"+n2+"' where UserId='"+id+"' and Password='"+n1+"'");
	ptmt.executeUpdate();
	response.sendRedirect("facultyhome.jsp");
}catch(Exception e){
	System.out.print(e);
	out.print("<a href='index.html'>Click Here </a> To Go Back");
}

%>
</body>
</html>