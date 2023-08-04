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
<script type="text/javascript">
 
</script>
 
</head>
<body>
<form action="addfaculty.jsp" name="reg" onsubmit="return validate()">
<table align="center">
<tr> <td>Name: </td><td> <input type="text" name="n1"> </td> </tr>
<tr> <td>UserId: </td><td> <input type="text" name="n2"> </td> </tr>
<tr> <td>Password: </td><td> <input type="password" name="n3"> </td> </tr>
<tr> <td>Confirm Password: </td><td> <input type="password" name="n4"> </td> </tr>
<tr>
					<td>Gender</td>
					<td>Male<input type="radio" name="n5" value="male">
						Female<input type="radio" name="n5" value="female"></td>
				</tr>
<tr> <td>Age: </td><td> <input type="text" name="n6"> </td> </tr>
<tr> <td>Email Id: </td><td> <input type="text" name="n7"> </td> </tr>
<tr> <td>Phone NO: </td><td> <input type="text" name="n8"> </td> </tr>
<tr> <td>Address: </td><td> <input type="text" name="n9"> </td> </tr>
<tr> <td colspan="2"> <input type="submit" value="SUBMIT"> </td> </tr>
</table>
</form>

</body>
</html>