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
String n6=request.getParameter("n6");
String n7=request.getParameter("n7");
String n8=request.getParameter("n8");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
System.out.print("update faculty set Name='"+n1+"', gender='"+n4+"', age='"+n5+"',Emailid='"+n6+"', Phoneno='"+n7+"', Address='"+n8+"' where UserId='"+n2+"'");
PreparedStatement ptmt=con.prepareStatement("update faculty set Name='"+n1+"', gender='"+n3+"', age='"+n4+"',Emailid='"+n5+"', Phoneno='"+n6+"', Address='"+n7+"' where UserId='"+n8+"'");
ptmt.executeUpdate();
ptmt.close();
con.close();
response.sendRedirect("adminhome.jsp");


}catch(Exception e){
System.out.print(e);
}

 %>
</body>
</html>