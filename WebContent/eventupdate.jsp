<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
PreparedStatement ptmt=con.prepareStatement("update events set Ondate='"+n3+"', ontime='"+n4+"', Comments='"+n5+"',eventname='"+n1+"' where eventon='"+n2+"' ");
ptmt.executeUpdate();
ptmt.close();
con.close();
response.sendRedirect("facultyhome.jsp");
}catch(Exception e){
System.out.print(e);
}

 %>
</body>
</html>