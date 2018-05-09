<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<title>Azulmedia</title>
<script type="text/javascript" language="javascript">
javascript:window.history.forward(1);
</script>
<%
response.setHeader("pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>

<script type="text/javascript" src="updatevalidation.js"></script>
</head>
<%
if(session.getAttribute("username")!=null)
{
try
{
	
String emailid=(String)session.getAttribute("username");
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/question", "VKMAMIDI", "password");
PreparedStatement ps=con.prepareStatement("select * from rohit.answer where emailid1=?");
ps.setString(1, emailid);
ResultSet rs=ps.executeQuery();
%>

<body>

<div id="wrap">
  <div id="header">
    <h1 id="logo">Problem Discussion </h1>
    <h2 id="slogan">Problem Shared, Problem Solved &ndash; Q &amp; A</h2>
    <div id="menu">
      <ul>
        <li><a href="index.jsp">Home</a></li>
             <li><a href="allQ.jsp">All Question</a></li>
		   <li><a href="myques.jsp">My Question</a></li>
		     <li><a href="ans.jsp">Answer</a></li>
             <li><a href="update.jsp">update</a></li>
             <li><a href="logout.jsp">logout</a></li>
        <li><a href="ask.jsp">Ask</a></li>
      </ul>
    </div>
  </div>
  <div id="content-wrap">
    
     

      <h1>&nbsp;</h1>
      <div class="searchform">
         </div>
      </div>
    <div id="main"> <a name="TemplateInfo"></a>
      <div class="box">
       <center>
		<div>
		<h1>&nbsp;</h1>
		<h1>&nbsp;</h1>
		<table>
		<tr>
		<th colspan="2" align="center"> Emailid</th>
		<th colspan="2" align="center">Ur Emailid</th>
		<th colspan="2" align="center">Question</th>
		<th colspan="2" align="center">Answer</th>
		<th colspan="2" align="center">Date</th>
		</tr>
<% 
while(rs.next())
{
%>
<tr>
<td colspan="2" align="center"><%=rs.getString(1) %></td>
<td colspan="2" align="center"><%=rs.getString(2) %></td>
<td colspan="2" align="center"><%=rs.getString(3) %></td>
<td colspan="2" align="center"><%=rs.getString(4) %></td>
<td colspan="2" align="center"><%=rs.getString(5) %></td>
</tr>		
		<%} %>
		</table>
		
			<p>&nbsp;</p>
		<p>&nbsp;</p>
		</div>
		</center>
      </div>
      <a name="SampleTags"></a>
      <div class="box">
        <h1>
          <label></label>
        </h1>
        <br />
      </div>
    </div>
    <br />
  </div>
</div>
<div id="footer-wrap">
  <div class="footer-left">
    <p class="align-left"> &copy; 2006 <strong> msanswers@webteklabs.com</strong></p>
  </div>
  <div class="footer-right">
    <p class="align-right">&nbsp;</p>
  </div>
</div>
<%
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
</body>
</html>
