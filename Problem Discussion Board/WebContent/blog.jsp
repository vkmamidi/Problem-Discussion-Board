<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SocialNet | Blog</title>
<script type="text/javascript" language="javascript">
javascript:window.history.forward(1);
</script>
<%
response.setHeader("pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js1/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js1/script.js"></script>
<script type="text/javascript" src="js1/cufon-yui.js"></script>
<script type="text/javascript" src="js1/arial.js"></script>
<script type="text/javascript" src="js1/cuf_run.js"></script>
</head>
<body>
<%
String userid=(String)session.getAttribute("username");
if(userid!=null)
{

%>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1><a href="#"><span>Question and Answer</span><small><h3>corporate solution</h3></small></a></h1>
      </div>
      <div class="search">
        <form method="get" id="search" action="#">
          <span>
          <input type="text" value="Search..." name="s" id="s" />
          <input name="searchsubmit" type="image" src="images/search.gif" value="Go" id="searchsubmit" class="btn"  />
          </span>
        </form>
        <!--/searchform -->
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="login.jsp">Login</a></li>
          <li><a href="register.jsp">Register</a></li>
          <li class="active"><a href="blog.jsp">Blog</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
        <div class="clr"></div>
      </div>
      <div class="hbg"><img src="images/agriculture3.jpg" width="923" height="291" alt="" /></div>
    </div>
    <div class="content">
      <div class="content_bg">
        <div class="mainbar">
          <div class="article">
            <h2><span>A Blog</span> Entry</h2>
            <div class="clr"></div>
            <p>Posted by <a href="">Owner</a> <span>&nbsp;&bull;&nbsp;</span> </p>
            <p>The purpose of this document is to define scope and requirements of a Simple
Problem Sharing and Answers to Solve using - Q&A for the customer community of
a telecom giant. The proposed system will allow the customers to post their
problems and review responses from the community to find a solution. This Q&A
tool is expected to provide:
1. A very simple clutter free user interface.
2. Quick and easy tool to Share Problems and Receive responses by
community. Owner acknowledges response as Helpful or Solved.
This document is the primary input to the development team to architect a solution
for this project. </p>
            
            <p><a href="#"><strong>Comments (3)</strong></a> <span>&nbsp;&bull;&nbsp;</span>September 10, 2014 <span>&nbsp;&bull;&nbsp;</span> </p>
          </div>
          <div class="article">
            <h2><span>3</span> Responses</h2>
            <div class="clr"></div>
            <div class="comment"> <a href="#"><img src="images/1370942425-picsay.jpg" width="100" height="100" alt="" class="userpic" /></a>
              <p><a href="#">Sireesh</a> Says:<br />
                September 11th, 2014 at 2:17 pm</p>
              <p>it is very Useful from this site it made easy to find my solution regarding IT sector</p>
            </div>
            <div class="comment"> <a href="#"><img src="images/919700882880.jpg" width="100" height="100" alt="" class="userpic" /></a>
              <p><a href="#">Sravan</a> Says:<br />
                September 12th, 2014 at 2:10 pm</p>
              <p>it s a really Boring website .</p>
            </div>
            <div class="comment"> <a href="#"><img src="images/IMG-20140910-WA0000.jpg" width="100" height="100" alt="" class="userpic" /></a>
              <p><a href="#">Rohit</a> Says:<br />
                September 12th, 2014 at 2:17 pm</p>
              <p>very Useful & Unique</p>
            </div>
          </div>
          <div class="article">
            <h2><span>Leave a</span> Reply</h2>
            <div class="clr"></div>
            <form action="#" method="post" id="leavereply">
              <ol>
                <li>
                  <label for="name">Name (required)</label>
                  <input id="name" name="name" class="text" />
                </li>
                <li>
                  <label for="email">Email Address (required)</label>
                  <input id="email" name="email" class="text" />
                </li>
                <li>
                  <label for="website">Website</label>
                  <input id="website" name="website" class="text" />
                </li>
                <li>
                  <label for="message">Your Message</label>
                  <textarea id="message" name="message" rows="8" cols="50"></textarea>
                </li>
                <li>
                  <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                  <div class="clr"></div>
                </li>
              </ol>
            </form>
          </div>
        </div>
        <div id="content-wrap">
    <div id="sidebar" >
      <h1 class="clear">Spice Works </h1>
      <ul class="sidemenu">
        &emsp;
        <li>
        
        <a href="#">Need help?</a></li>
        <li><a href="#TemplateInfo">Join in the fun &ndash; near you!</a></li>
        <li><a href="#SampleTags">Research and find IT answers</a></li>
        <li><a href="#">It careers </a></li>
        <li><a href="#"></a></li>
      </ul>
      </div>
          <div class="gadget">
            
          </div>
          <div class="gadget">
           
            <div class="clr"></div>
            <div class="testi">
              <p><span class="q"><img src="images/qoute_1.gif" width="20" height="15" alt="" /></span> 

            </div>
          </div>
        </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
        <a href="#"><img src="images/pic_1.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pic_2.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pic_3.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pic_4.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pic_5.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/pic_6.jpg" width="58" height="58" alt="" /></a> </div>
      <div class="col c2">
        <h2><span>Post a Problem</span></h2>
        <p>The text box on the main screen displaying ‘Ask a Question’ prompts the customer
to share the problem in brief. The customer will be able to enter the problem details
in the text box below. Upon click of Ask button, the problem will immediately appear
below the text box in a list of problems posted as shown in the above figure. The
problem posted will display date time stamp.</p>
<hr>
<h2><span>Review & Mark Response</span></h2>
<p>The problem owner can view their own questions in the tab ‘My Questions’. The
responses to the question can be marked as Helpful or Solved. The question
remains open to receiving answers till the response is marked as Solved. Click on a
question to view the responses. The response view screen will display each
answer with buttons for “Mark as Helpful”, “Problem Solved”. Please note that these
buttons are visible to the owner of the problem shared.</p></hr>
      </div>
      <div class="col c3">
        <h2><span>About</span></h2>
        <p>The tool displays the landing page with text box to write a question and details of
the problem. The Ask button submits the question to the community. The lower
section of the page has two tabs, All Questions tab displays list of questions asked
by the community members. My Questions displays the list of questions asked by
the logged in community member.
The questions are displayed with a status of Open [? or *] or Solved [Ticked]. Each
question entry displays the number of answers received and the date-time stamp of
the question. Users may choose to ask a question on this screen or browse through
the list of questions and respond to an open question if they have a solution in mind
from their experience or knowledge.</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="footer_resize">
    <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
    <p class="rf">Layout by Rocket <a href="http://www.rocketwebsitetemplates.com/">Website Templates</a></p>
    <div class="clr"></div>
  </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
<%
}
else
{
response.getWriter().write("<h2>Login First</h2>");
getServletContext().getRequestDispatcher("/login.jsp").include(request, response);
}
%>
</body>
</html>