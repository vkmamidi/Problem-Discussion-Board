<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<title>Question</title>
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
 <%  if(session.getAttribute("username")!=null)
      {
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
		               <li><a href="update.jsp">update</a></li>
               <li><a href="ans.jsp">Answer</a></li>
             <li><a href="logout.jsp">logout</a></li>
        <li><a href="ask.jsp">Ask</a></li>
      </ul>
    </div>
  </div>
  <table><tr><td>
  <div id="content-wrap">
    <div id="sidebar" >
      <h1 class="clear"><h1 class="clear">Welcome ${username}
     </h1>
      </h1>
      </td>
      <td>
      <h1>&nbsp;</h1>
      <div class="searchform">
        <form action="#">
          <p>&nbsp;</p>
        </form>
      </div>
      </div>
    <div id="main"> <a name="TemplateInfo"></a>
      <div class="box">
     
      
   
        
		<div>
		   <div ><table border="0" ><tr><td><img src="images/chat.jpg" height="100px;" width="100px;" /></td><td><h2>Welcome</h2><h3>Problem Shared is Problem Solved</h3></td></tr></table></div>
		   </div>
		   
		        <form method="post" action="Asking">
		        <table border="0" >
		   		<tr><td><input type="text" name="question" style="width:400px; height:30px;" placeholder="ask your Question" /></td></tr>
		   		<tr><td><textarea cols="500" rows="50" name="details" style="margin-top:20px; width:400px;" placeholder="Provide Qusetion Details Here"></textarea></td></tr>
				<tr><td><input type="submit" value="ASK!"  style="width:200px; margin-top:20px; height:30px;" /></td></tr>
				</table>
				</form>
				
				
		   
		   </div>
		   <div>
		   <table border="0"><tr>
		   <td>   <li><a href="allA.jsp">All Answer</a></li></td>
		 <td>  <li><a href="myques.jsp">My Question</a></li></td></tr>
		 
		   </table>
		   </div>
		
		
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
<%
      }
 else
 {
	 response.sendRedirect("login.jsp");
 }
%>
</body>
</html>
