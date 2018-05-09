<%@page import="java.sql.PreparedStatement"%>
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
<%if(session.getAttribute("username")!=null)
{
	String ques=request.getParameter("ques");

try
{
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/question", "VKMAMIDI", "password");
PreparedStatement ps=con.prepareStatement("delete from rohit.question where question=?");
ps.setString(1, ques);
int i=ps.executeUpdate();
PreparedStatement ps1=con.prepareStatement("delete from rohit.answer where question=?");
ps1.setString(1, ques);
int j=ps1.executeUpdate();
if(i!=0&&j!=0)
{
	getServletContext().getRequestDispatcher("/deleteQ.jsp").forward(request, response);
}
else
{
	response.getWriter().write("Not Deleted");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
}
else
{
	response.sendRedirect("login.jsp");
}

	%>
<body>

</body>
</html>