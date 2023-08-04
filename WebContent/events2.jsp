<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<table>
<%
try{
	String n1=request.getParameter("n1");
	String n2=request.getParameter("n2");
	String n3=request.getParameter("n3");
	String n4=request.getParameter("n4");
	String n5=request.getParameter("n5");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from events where eventname='"+n1+"' or Ondate='"+n3+"'");
int count=0;
while(rs.next()){
count=count+1;
}
if(count==0){
PreparedStatement ptmt=con.prepareStatement("insert into events values(?,?,?,?,?)");
ptmt.setString(1, n1);
ptmt.setString(2, n2);
ptmt.setString(3, n3);
ptmt.setString(4, n4);
ptmt.setString(5, n5);
ptmt.executeUpdate();
response.sendRedirect("studenthome.jsp");
}else{
	out.print("go back already date have shedules ");
}
}catch(Exception e){
	System.out.print(e);
}
%>
</table>
</body>
</html>