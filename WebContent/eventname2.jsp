<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<form action="events2.jsp">
<table>
<tr><td>Event Type</td><td> <input type="text" name="n1"> </td></tr>
<tr><td>Event On</td><td> <input type="text" name="n2"> </td></tr>
<tr><td>On Date</td><td> <input type="text" name="n3">yyyy-mm-dd </td></tr>
<tr><td>On Time</td><td> <input type="text" name="n4"> </td></tr>
<tr><td>Comments</td><td> <input type="text" name="n5"> </td></tr>
<tr><td colspan="2" align="center"> <input type="submit" value="SUBMIT"> </td></tr>
</table>

</form>

<table border="1">
<tr><td>Event Name</td> <td> Event On</td> <td>On Date</td> <td>On Time</td> <td>Comments</td></tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from events");
while(rs.next()){
	%>
	<tr> <td><%=rs.getString(1) %> </td> <td><%=rs.getString(2) %></td> <td><%=rs.getString(3) %></td> <td><%=rs.getString(4) %></td> <td><%=rs.getString(5) %></td> </tr>
	<%
	}
}catch(Exception e){
	System.out.print(e);
}
%>
</table>

</body>
</html>