<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<title>Azulmedia</title>
<script type="text/javascript" src="registervalidation.js"></script>
</head>
<body>
<div id="wrap">
  <div id="header">
    <h1 id="logo">Problem Discussion</h1>
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
        <form action="registerservlet" method="post">
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
		<h1>Manager Register</h1>
		<form method="post" action="registerservlet1" name="registration" onsubmit="return formValidation()">
		<table width="335" height="127" border="0" >
		<tr><td width="133" height="40">First Name</td>
		<td width="192"><input type="text" name="fname" /></td></tr>
		<tr><td width="133" height="40">Last Name</td>
		<td width="192"><input type="text" name="lname" /></td></tr>
		<tr><td width="133" height="40">Contact</td>
		<td width="192"><input type="text" name="contact" /></td></tr>
		<tr><td width="133" height="40">Address</td>
		<td width="192"><input type="text" name="address" /></td></tr>
		<tr>
		<td>Gender</td>
		<td>
		<input type="radio" name="gender" value="male" checked="checked">Male</input></td>
		<td width="192">
<input type="radio" name="gender" value="female">Female
		</td>
		</tr>
		<tr><td width="133" height="40">Email</td>
		<td width="192"><input type="text" name="loginid" /></td></tr>
		<tr><td width="133" height="40">Password</td>
		<td width="192"><input type="password" name="password" /></td></tr>
		<tr><td width="133" height="40">Confirm Password</td>
		<td width="192"><input type="password" name="password1" /></td>
		</tr>
		
		<tr>
		<td width="133" height="40">State</td>
		<td>
		<select name="state">
<option value="Default">Select a State</option>
<optgroup label="INDIA">
<option value="Delhi">Delhi</option>
<option value="Telangana">Telangana</option>
<option value="UttarPradesh">UttarPradesh</option>
</optgroup>
</select>
		</td>
		
		</tr>
		<tr><td width="133" height="40">City</td>
		<td width="192"><select name="city">
		<option value="Default">Select a city</option>
		  <option value="Jaipur">Jaipur</option>
		  <option value="Delhi">Delhi</option>
		  <option value="Agra">Agra</option>
		  <option value="Rudrapur">Rudrapur</option>
		  <option value="Nainital">Nainital</option>
		  <option value="Kashipur">Kashipur</option>
		  <option value="Mumbai">Mumbai</option>
		  <option value="Noida">Noida</option>
		</select></td></tr>
		
		<tr><td width="133" height="40">Date of Birth</td>
		<td width="192"><input type="date" name="dob" /></td></tr>
		<tr>
<td width="133">Security Question</td>
<td > <select name="ques">
<option value="default" selected="selected">Default</option>
<option value="Your First School Name">Your First School Name</option>
<option value="Your First College Name">Your First College Name</option>
<option value="Your First Pet Name">Your First Pet Name</option>
<option value="Your GirlFriend Name">Your GirlFriend Name</option>

</select>
</tr>
<tr>
<td width="133" >Security Answer</td>
<td width="192"> <input type="text" name="ans"></td> 
</tr>
		
		<tr><td width="133" height="40">Captcha</td>
		<td width="192"><img src="http://localhost:8080/question/CaptchaServlet"></img></td>
		<td width="192">
		<a href="register.jsp">New captcha</a></td></tr>
		<tr><td width="133" height="40">Captcha Answer</td>
		<td width="192"><input type="text" name="code" /></td></tr>
		
		<tr><td height="32">		</td>
		  <td><input name="submit" type="submit" value="Register"  style="float:right; margin-right:60px; width:140px;" /></td>
		</tr>
		</table>
		
		</form >
		<h1>${msg}</h1>
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
    <p class="align-left"> &copy; 2014 <strong> msanswers@webteklabs.com</strong></p>
  </div>
  <div class="footer-right">
    <p class="align-right">&nbsp;</p>
  </div>
</div>
</body>
</html>
