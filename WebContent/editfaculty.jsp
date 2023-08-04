<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<table>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from faculty");
int count=0;
while(rs.next()){
	%>
	<tr> <td><form action="facultyupdate.jsp" id="s<%=count%>"><input type="text" form="s<%=count %>" size="5" value="<%=rs.getString(1) %>" disabled="disabled"><input form="s<%=count %>" type="hidden" size="5" name="n1" value="<%=rs.getString(1) %>"> </td> <td><input size="5" name="n2" form="s<%=count %>" type="hidden" value="<%=rs.getString(3) %>"></td> <td><input form="s<%=count %>" name="n3" size="5" type="text" value="<%=rs.getString(4) %>"></td> <td><input form="s<%=count %>" name="n4" size="5" type="text" value="<%=rs.getString(5) %>"></td> <td><input form="s<%=count %>" name="n5" size="8" type="text" value="<%=rs.getString(6) %>"></td><td><input form="s<%=count %>" name="n6" size="8" type="text" value="<%=rs.getString(7) %>"></td> <td> <input form="s<%=count %>" type="hidden" name="n7"  value="<%=rs.getString(3)%>"><input form="s<%=count %>" type="hidden" name="n8" value="<%=rs.getString(2)%>"> <input form="s<%=count %>" type="submit" value="Edit"></form> </td> </tr>
	<%
	count=count+1;
	}
}catch(Exception e){
	System.out.print(e);
}
%>
</table>