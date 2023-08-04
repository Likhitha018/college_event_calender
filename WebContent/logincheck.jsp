<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
	if(n1.equals("admin") && n2.equals("admin")){
		session.setAttribute("userid", n1);
		response.sendRedirect("adminhome.jsp");
	}
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventcalender","root","root");
	Statement stmt=con.createStatement();
 	ResultSet rs1=stmt.executeQuery("select * from users where UserId='"+n1+"' and Password='"+n2+"' and status='accept'");
 
	while(rs1.next()){
		session.setAttribute("userid", n1);
		response.sendRedirect("studenthome.jsp");
	}
	
	ResultSet rs2=stmt.executeQuery("select * from faculty where userid='"+n1+"' and password='"+n2+"'");

	while(rs2.next()){
		session.setAttribute("fid", n1);
		response.sendRedirect("facultyhome.jsp");
	}
	request.setAttribute("log", "fail");%>
	<jsp:forward page="index.jsp"></jsp:forward><% 
}catch(Exception e){
	System.out.print(e);
}
%>


<%-- <jsp:forward page="adminhome.jsp"></jsp:forward> --%>
</table>
</body>
</html>