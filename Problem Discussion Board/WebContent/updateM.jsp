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
try{
String emailid=(String)session.getAttribute("username");
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/question","VKMAMIDI","password");
String sql="select * from rohit.register where emailid=? and dept='Manager'";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,emailid);
ResultSet rs=ps.executeQuery();
%>
<body>
<% 
while(rs.next())
{
%>
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
  <div id="content-wrap">
    
     

      <h1>&nbsp;</h1>
      <div class="searchform">
        <form action="UpdateServlet" method="post">
          <p>&nbsp;</p>
        </form>
      </div>
      </div>
    <div id="main"> <a name="TemplateInfo"></a>
      <div class="box">
       <center>
		<div>
		<h1>&nbsp;</h1>
		<h1>&nbsp;</h1>
		<h1>User Register</h1>
		<form method="post" action="UpdateServlet1" name="registration" onsubmit="return formValidation()">
		<table width="335" height="127" border="0" >
		<tr><td width="133" height="40">First Name</td>
		<td width="192"><input type="text" name="fname"value="<%=rs.getString(1)%>" /></td></tr>
		<tr><td width="133" height="40">Last Name</td>
		<td width="192"><input type="text" name="lname" value="<%=rs.getString(2)%>" /></td></tr>
		<tr><td width="133" height="40">Contact</td>
		<td width="192"><input type="text" name="contact" value="<%=rs.getString(3)%>" /></td></tr>
		<tr><td width="133" height="40">Address</td>
		<td width="192"><input type="text" name="address" value="<%=rs.getString(4)%>"/></td></tr>
		
		<tr><td width="133" height="40">Email</td>
		<td><label><%=rs.getString(8)%>"</label></td>
		<td width="192"><input type="hidden" name="emailid" value="<%=rs.getString(8)%>"/></td></tr>
		<tr><td width="133" height="40">Password</td>
		<td width="192"><input type="passwrd" name="passwrd" value="<%=rs.getString(9)%>" /></td></tr>
		<tr><td width="133" height="40">Confirm Password</td>
		<td width="192"><input type="password1" name="password1" value="<%=rs.getString(9)%>" /></td>
		</tr>
		<tr>
		<td width="133" height="40">State</td>
		<td>
		<select name="state">
		<option value="<%=rs.getString(6)%>" disabled="disabled"><%=rs.getString(6)%></option>
<option value="Default">Select a State</optio1n>
<optgroup label="INDIA">
<option value="Delhi">Delhi</option>
<option value="Telangana">Telanagana</option>
<option value="UttarPradesh">UttarPradesh</option>
</optgroup>
</select>
		</td>
		
		</tr>
		<tr><td width="133" height="40">City</td>
		<td width="192"><select name="city">
		<option value="<%=rs.getString(7)%>" ><%=rs.getString(7)%> </option>
		<option value="Default">Select a city</option>
		  <option value="Jaipur">Jaipur</option>
		  <option value="Delhi">Delhi</option>
		  <option value="Agra">Agra</option>
		  <option value="Kudrapur">Rudrapur</option>
		  <option value="Nainital">Nainital</option>
		  <option value="Kashipur">Kashipur</option>
		  <option value="Mumbai">Mumbai</option>
		  <option value="Hyderabad">Hyderabad</option>
		</select></td></tr>
		
		<tr><td width="133" height="40">Date of Birth</td>
		<td width="192"><input type="date" name="dob" value="<%=rs.getString(10)%>"  /></td></tr>
		<tr><td width="133" height="40">Select a Question</td>
		<td width="192"><select name="ques">
		<option value="<%=rs.getString(12)%>" disabled="disabled" ><%=rs.getString(12)%> </option>
		<option value="Your First School Name">Your First School Name</option>
<option value="Your First College Name">Your First College Name</option>
<option value="Your First Pet Name">Your First Pet Name</option>
<option value="Your GirlFriend Name">Your GirlFriend Name</option>
</select></td></tr>
		<tr>
<td width="133" >Security Answer</td>
<td width="192" > <input type="text" name="ans" value="<%=rs.getString(13)%>"></td> 
</tr>
		
		<tr><td height="32">		</td>
		  <td><input name="submit" type="submit" value="Update"  style="float:right; margin-right:60px; width:140px;" /></td>
		</tr>
		</table>
		
		</form >
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
}
catch(Exception e)
{
 e.printStackTrace();
}
%>
</body>
</html>
