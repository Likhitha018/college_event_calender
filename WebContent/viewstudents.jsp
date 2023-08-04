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
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from users where status=''");
while(rs.next()){
	%>
	<tr> <td><%=rs.getString(1) %> </td> <td><%=rs.getString(3) %></td> <td><%=rs.getString(4) %></td> <td><%=rs.getString(5) %></td> <td><%=rs.getString(6) %></td> <td><a href="accept.jsp?id=<%=rs.getString(1) %>">Accept</a></td><td><a href="reject.jsp?id=<%=rs.getString(1) %>">Reject</a></td>  </tr>
	<%
	}
}catch(Exception e){
	System.out.print(e);
}
%>
</table>
</body>
</html>