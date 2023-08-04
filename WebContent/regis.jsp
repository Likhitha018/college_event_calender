<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action='register.jsp' name='regi' onsubmit="return homepage('reg')"><table><tr><td> User Id : </td><td><input type='text' name='n1'> </td></tr>
		<tr><td> Password : </td><td> <input type='password' name='n2'> </td></tr>
	<tr><td> Confirm Password : </td><td> <input type='password' name='n3'> </td></tr>
	<tr><td> Name : </td><td> <input type='text' name='n4'> </td></tr>
	<tr><td> Mobile No : </td><td> <input type='text' name='n5'> </td></tr>
<tr><td> Email Id : </td><td> <input type='text' name='n6'> </td></tr>
	<tr><td> Address : </td><td> <textarea name='n7'> </textarea></td></tr>
	<tr><td colspan='2' align='center'> <input type='Submit' value='SUBMIT'> </td></tr></form>
</body>
</html>