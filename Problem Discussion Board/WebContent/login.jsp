<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<title>Azulmedia</title>
<script type="text/javascript" src="loginvalidate.js"></script>
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
<body>
<div id="wrap">
  <div id="header">
    <h1 id="logo">Problem Discussion </h1>
    <h2 id="slogan">Problem Shared, Problem Solved &ndash; Q &amp; A</h2>
    <div id="menu">
      <ul>
     <li><a href="index.jsp">Home</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp">User Register</a></li>
        <li><a href="register1.jsp">Manager Register</a></li>
        <li><a href="ask.jsp">Ask</a></li>
       	</ul>
    </div>
  </div>
  <div id="content-wrap">
    <div id="sidebar" >
      <h1>&nbsp;</h1>
      <div class="searchform">
        <form action="#">
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
		<h1>LOGIN</h1>
		<form method="post" action="UserLogin" name="login" onsubmit="return formValidation()">
		<table width="264" height="127" border="0" >
		<tr><td width="75" height="40">UserName</td><td width="179"><input type="text" name="username" /></td></tr>
		<tr><td>Password</td><td><input type="password" name="password" /></td></tr>
		<tr><td>Department</td><td><select name="dept">
		<option value="Admin">Admin</option>
		<option value="Manager">Manager</option>
		<option value="User">User</option>
		</select></td></tr>
		<tr><td height="32">		</td>
		  <td><input name="submit" type="submit" value="Login"  style="float:right; margin-right:50px; width:140px;" /></td>
		</tr>
		<tr>
		<td>
		&nbsp;
		</td>
		<td>
		&nbsp;
		</td>
		</tr>
		<tr>
		<td></td>
		<td><a href="forgotpassword.jsp">ForGot Password!!</a></td>
		</tr>
		</table>
		<%
		
		if(request.getAttribute("msg")!=null)
		{
			out.println("<font color='yellow'>"+request.getAttribute("msg"));
		}
		
		%>
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
    <p class="align-left"> &copy; 2014 <strong> msanswers@webteklabs.com </strong></p>
  </div>
  <div class="footer-right">
    <p class="align-right">&nbsp;</p>
  </div>
</div>
</body>
</html>
