<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<table>
<tr><td>Name</td><td>UserId</td><td>Gender</td><td>Age</td><td>Email Id</td><td>Phone No</td><td>Address</td><td>Delete</td></tr>

<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from faculty");
int count=0;
while(rs.next()){
	%>
	<tr><td><form action="dfaculty.jsp" id="s<%=count %>" ><input type="text" form="s<%=count %>" size="5" name="n2" value="<%=rs.getString(1) %>" disabled="disabled"> </td> <td><input size="5" form="s<%=count %>" type="text" value="<%=rs.getString(2) %>" disabled="disabled" ><input type="hidden" form="s<%=count %>" name="n1" value="<%=rs.getString(2) %>"> </td> <td><input form="s<%=count %>" name="n4" size="5" type="text" value="<%=rs.getString(4) %>"></td> <td><input form="s<%=count %>" name="n5" size="5" type="text" value="<%=rs.getString(5) %>"></td><td><input form="s<%=count %>" name="n6" size="5" type="text" value="<%=rs.getString(6) %>"></td> <td><input form="s<%=count %>" name="n7" size="5" type="text" value="<%=rs.getString(7) %>"></td><td><input form="s<%=count %>" name="n8" size="5" type="text" value="<%=rs.getString(8) %>"></td><td><input form="s<%=count %>" type="submit" value="Delete"></form></td> </tr>
	<%
	count=count+1;
	}
}catch(Exception e){
	System.out.print(e);
}
%>
</table>