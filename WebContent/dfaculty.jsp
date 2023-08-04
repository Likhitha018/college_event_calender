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
	System.out.print(n1);
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
	PreparedStatement ptmt=con.prepareStatement("delete from faculty where UserId='"+n1+"'");
	ptmt.executeUpdate();
	response.sendRedirect("adminhome.jsp");

}catch(Exception e){
	System.out.print(e);
}
%>
</body>
</html>