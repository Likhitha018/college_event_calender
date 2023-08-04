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
<table border="1">
<tr><td>Event Name</td> <td> Event On</td> <td>On Date</td> <td>On Time</td> <td>Comments</td><td>Delete</td></tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
String ss=session.getAttribute("fid").toString();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from events where ses='"+ss+"'");
int count=0;
while(rs.next()){
	%>
	<tr> <td><form action="delete.jsp" id="s<%=count%>"><input form="s<%=count %>" type="text" name="n1" value='<%=rs.getString(1) %>' size="6" disabled="disabled"><input form="s<%=count %>" type="hidden" name="n1" value='<%=rs.getString(1) %>'> </td> <td><input form="s<%=count %>" size="6" type="text" disabled="disabled" name="n2" value='<%=rs.getString(2) %>'><input form="s<%=count %>" type="hidden" name="n2" value='<%=rs.getString(2) %>'> </td> <td><%=rs.getString(3) %></td> <td><%=rs.getString(4) %></td> <td><%=rs.getString(5) %></td><td> <input form="s<%=count %>" type="submit" value="Delete"></form></td>   </tr>
	<%
	count=count+1;
	}
}catch(Exception e){
	System.out.print(e);
}
%>
</table>

</body>
</html>