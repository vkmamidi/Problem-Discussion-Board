<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="ResetServlet" method="post">
<table>
<tr>
<td colspan="2" align="center">Old Password:</td>
<td align="center"><input type="text" name="passwrd">
</td>
</tr>
<tr>
<td colspan="2" align="center">New Pasword:</td>
<td align="center"><input type="password" name="passwrd1">
</td>
</tr>
<tr>
<td colspan="2" align="center">Confirm Password:</td>
<td align="center"><input type="text" name="passwrd2">
</td>
</tr>
<tr>
<td align="center"><input type="hidden" name="userid" value="${loginid}">
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="RESETPassword"></td>
</tr>

</table>


</form>
</center>
</body>
</html>