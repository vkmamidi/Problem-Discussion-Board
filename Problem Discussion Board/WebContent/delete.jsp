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
<%
if(session.getAttribute("username")!=null)
{
	try
	{
		String email=request.getParameter("email");
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/question","VKMAMIDI","password");
		PreparedStatement ps=con.prepareStatement("delete from rohit.register where emailid=? and dept='Manager'");
		
		ps.setString(1, email);
		int i=ps.executeUpdate();
		PreparedStatement ps1=con.prepareStatement("delete from rohit.login where email=? and dept='Manager'");
		ps1.setString(1, email);
		int j=ps.executeUpdate();
		
		if(i!=0 && j!=0)
		{
			getServletContext().getRequestDispatcher("/ViewManager.jsp").forward(request, response);		
			}
		else
		{
			request.setAttribute("msg", "Not Deleted");
			getServletContext().getRequestDispatcher("/ViewManager.jsp").include(request, response);
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
}
%>
<body>

</body>
</html>