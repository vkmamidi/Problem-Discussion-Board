<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<title>SpiceWorks</title>
<script type="text/javascript" language="javascript">
javascript:window.history.forward(1);
</script>
<%
response.setHeader("pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>


</head>
<%if(session.getAttribute("username")!=null)
	{%>
	<%
	try
	{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/question","VKMAMIDI","password");
	PreparedStatement ps=con.prepareStatement("select * from rohit.register where dept='User'");
	ResultSet rs=ps.executeQuery();
	%>
<body>
<div id="wrap">
  <div id="header">
    <h1 id="logo">MS ANSWERS </h1>
    <h2 id="slogan">Problem Shared, Problem Solved &ndash; Q &amp; A</h2>
    <div id="menu">
      <ul>
             <li><a href="index.jsp">Home</a></li>
             <li><a href="Viewuser.jsp">View User</a></li>
             <li><a href="allQ.jsp">All Question</a></li>
              <li><a href="updateM.jsp">Update</a></li>
              <li><a href="DeleteQ.jsp">Delete Question</a></li>
        <li><a href="logout.jsp">logout</a></li>
      </ul>
    </div>
  </div>
  <table><tr><td>
  <div id="content-wrap">
    <div id="sidebar" >
      <h1 class="clear">About Us </h1>
      <ul class="sidemenu">
        <li><a href="#TemplateInfo">Join in the fun &ndash; near you!</a></li>
        <li><a href="#SampleTags">Research and find IT answers</a></li>
        <li><a href="#"></a></li>
      </ul>
      <h1>&nbsp;</h1>
      <div class="searchform">
        <form action="#">
          <p>&nbsp;</p>
        </form>
      </div>
    </div>
    <div id="main"> <a name="TemplateInfo"></a>
      <div class="box">

	<table>
	<tr>
	<th colspan="2" align="center">Fname</th>
	<th colspan="2" align="center">Lname</th>
	<th colspan="2" align="center">Contact</th>
	<th colspan="2" align="center">Address</th>
	<th colspan="2" align="center">Gender</th>	
	<th colspan="2" align="center">Email id</th>
	<th colspan="2" align="center">Department</th>
	
	</tr>
	<%while(rs.next())
	{
	%>
	<tr>
	<td colspan="2" align="center"><%=rs.getString(1)%></td>
	<td colspan="2" align="center"><%=rs.getString(2)%></td>
	<td colspan="2" align="center"><%=rs.getString(3)%></td>
	<td colspan="2" align="center"><%=rs.getString(4)%></td>
	<td colspan="2" align="center"><%=rs.getString(5)%></td>
	<td colspan="2" align="center"><%=rs.getString(8)%></td>
	<td colspan="2" align="center"><%=rs.getString(11)%></td>
	<td colspan="2" align="center"><a href="deleteU.jsp?email=<%=rs.getString(8)%>"><button type="submit">Delete</button></a></td>
	
	</td>
	</tr>
	<%} %>
	</table>
<h3>${msg}</h3>
      </div>
      <a name="SampleTags"></a>
      <h1>&nbsp;</h1>
      <h3>Join in the fun &ndash; near you!</h3>
      <p>Just finish an epic data center migration? Upgrade that network infrastructure and want to show off your hard work to the masses? Now you can with your MS ANSWERS profile. Bring your killer IT projects to life with images, descriptions&hellip; even video. Go ahead, brag a little. You've earned it! The proposed system will allow the customers to post their
          problems and review responses from the community to find a solution</p>
      <h1>&nbsp;</h1>
      <h3>Research and find IT answers</h3>
      <blockquote>
        <p>Need a hand with a tech question? Hop into the discussion forum and ask away! The vast majority of questions are answered within the first hour of posting &ndash; you&rsquo;ll get what you need and get back to work ASAP. Plus, Spiceworks members really do care &ndash; fear not, new posters! Whether you&rsquo;re brand new to IT or a seasoned pro, you&rsquo;ll get the answers you need and the respect you deserve.
        </p>
      </blockquote>
      <p>&nbsp;</p>
      <h1>&nbsp;</h1>
      <div class="box">
        <h1>
          <label></label>
          msanswers@webteklabs.com
        </h1>
        <br />
      </div>
    </div>
    <br />
  </div>
		
      </div>
      <a name="SampleTags"></a>
</table>
      <div class="box" id="txtHint">
        
      </div>
    </div>
    <br />
  </div>
</div>
</td>
</tr>
</table>
<div id="footer-wrap">
  <div class="footer-left">
    <p class="align-left"> &copy; 2014 <strong> msanswers@webteklabs.com </strong></p>
  </div>
  <div class="footer-right">
    <p class="align-right">&nbsp;</p>
  </div>
</div>
<%}
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
