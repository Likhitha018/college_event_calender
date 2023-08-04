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
	String n3=request.getParameter("n3");
	String n4=request.getParameter("n4");
	String n5=request.getParameter("n5");
	String n6=request.getParameter("n6");
	String n7=request.getParameter("n7");
	String n8=request.getParameter("n8");
	String n9=request.getParameter("n9");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
	PreparedStatement ptmt=con.prepareStatement("insert into faculty values(?,?,?,?,?,?,?,?)");
	ptmt.setString(1, n1);
	ptmt.setString(2, n2);
	ptmt.setString(3, n3);
	ptmt.setString(4, n5);
	ptmt.setString(5, n6);
	ptmt.setString(6, n7);
	ptmt.setString(7, n8);
	ptmt.setString(8, n9);
	ptmt.executeUpdate();
	response.sendRedirect("adminhome.jsp");
	
}catch(Exception e){
	System.out.print(e);
}
%>

</body>
</html>