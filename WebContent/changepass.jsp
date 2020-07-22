<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
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
<title>Voluntary Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<style>
table{
border-spacing:1em;}</style>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
					<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>

		</div>
		<div id="menu">
			<ul>
				
				<li><a href="homepage.jsp" accesskey="1" title="">HOME</a></li>
				
				
			</ul>
		</div>
	</div>
	</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
<script language="JavaScript" type="text/javascript">
<!--
function checkform(form)
{
	if(form.email.value==""||form.cpassword.value==""||form.npassword.value==""||form.n1password.value==""){
		alert("Please fill all the fields");
		form.email.focus();
		form.cpassword.focus();
		form.npassword.focus();
		form.n1password.focus();
		return false;
	}
	return true;
	}
	</script>

<body>
<center>			<h2 style="font-family: carlito; font-size: 200%;font-weight:bold; font-style:italic;color:#006666">CHANGE YOUR PASSWORD</h2></center>
<br>
<br>
<form action="changepass" method="post" onsubmit="return checkform(this)">
<center>
<table style=" margin-right:-35%;">
<div>
<img src="images/change1.jpg" style="float=:left; margin-left:-65%; margin-right:-10%; margin-top:-10%;margin-bottom:-20%; width:200px;height:200px;"></img>
</div><tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Enter Your email:</font></td><td><input type="email" name="email"></td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Enter Your current password:</font></td><td><input type="password" name="cpassword"></td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Enter Your new password:</font></td><td><input type="password" name="npassword"></td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Confirm Your new password:</font></td><td><input type="password" name="n1password"></td></tr>
</table>
<br><br>

		<input type="submit" style="font-family: 'carlito'; font-size: larger;color: white; background-color: blue;" value="Submit"></input>
<%String message=(String)request.getAttribute("alertMsg"); %>
<script type="text/javascript">
var msg="<%=message%>";
alert(msg);
</script>

</center>
</form>


</div>
</div>
</div>
</div>
</div>
</body>
</html>