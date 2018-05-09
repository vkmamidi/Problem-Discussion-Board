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
		PreparedStatement ps=con.prepareStatement("update rohit.login set(status)=(?)where dept='Manager'and status='Not Approved' and Email=?");
		ps.setString(1, "Approved");
		ps.setString(2, email);
		int i=ps.executeUpdate();
		PreparedStatement ps1=con.prepareStatement("update rohit.register set(status)=(?)where dept='Manager'and status='Not Approved' and Emailid=?");
		ps1.setString(1, "Approved");
		ps1.setString(2, email);
		int j=ps1.executeUpdate();
		
		if(i!=0 && j!=0)
		{
			getServletContext().getRequestDispatcher("/ApproveManager.jsp").forward(request, response);		
			}
		else
		{
			request.setAttribute("msg", "Not Approved");
			getServletContext().getRequestDispatcher("/ApproveManager.jsp").include(request, response);
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