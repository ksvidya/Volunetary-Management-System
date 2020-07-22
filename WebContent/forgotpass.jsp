<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="com.sun.mail.util.MailSSLSocketFactory"%>
<%@ page import="java.io.IOException"%>
<%@page import=" java.sql.ResultSet"%>
<%@ page import=" java.sql.Statement"%>

<%@ page import=" javax.servlet.ServletException"%>
<%@ page import=" javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.* "%>
<%@ page import="java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Forgot Password?</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

</head>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
						<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>
			
		</div>
		<div id="menu">
			<ul>
				
				<li><a href="index.jsp" accesskey="1" title="">HOME</a></li>
				<li><a href="selectsignup.jsp" accesskey="2" title="">REGISTER</a></li>
				
			</ul>
		</div>
	</div>
	</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>

	<form action="forgotpass" method="post">
		<center>
			<h3 style="font-family: carlito; font-size: 160%;font-weight:bold; font-style:italic;color:#006666">FORGOT YOUR PASSWORD!!</h3>
			<br>
			<br>

			<font color="black" style="font-family: carlito; font-size: 140%;font-style:italic;">Enter your registered email address. New password will be sent to your email address. </font>
			<br>
			<br><table style="margin-top:-10%;">
<div>
<img src="images/forgot.jpg" style="float=:left; margin-left:-95%; margin-right:-10%; margin-top:-10%;"></img>
</div>
				<tr>
					<td><font color="black" style="font-family: carlito; font-size: 160%;font-weight:bold; font-style:italic;">Email:</font></td>
					<td><input type="text" name="email"></input></td>
				</tr>
			</table>
<BR>
<br>
		
		<input type="submit" style="font-family: 'carlito'; font-size: larger;color: white; background-color: blue;" value="Submit"></input>
		</center>
	</form>
	</div>
</div>
</div>
</div>
</div>
</body>
<div id="footer" class="container">
	<p>&copy; Untitled. All rights reserved. Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>. Photos by <a href="http://fotogrph.com/">Fotogrph</a>.</p>
</div></html>