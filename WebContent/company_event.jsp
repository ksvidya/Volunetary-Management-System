<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Angled Theme 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20131104

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Volunteer Education Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<style>
table{
border-spacing:1em;}
</style>
<script language="JavaScript" type="text/javascript">
<!--
function checkform ( form )
{
  // see https://www.thesitewizard.com/archive/validation.shtml
  // for an explanation of this script and how to use it on your
  // own website

  // ** START **
  if (form.idcom.value == ""||form.title.value==""||form.namecom.value==""||form.descp.value==""||form.noofcol.value==""||form.noofstd=="") {
    alert( "Please fill all the fields" );
    form.courseid.focus();
    form.title.focus();
    form.namecom.focus();
    form.idcom.focus();
    form.descp.focus();
    form.noofstd.focus();
    form.skills.focus();
    form.noofvol.focus();
    return false ;
  }
  // ** END **
  return true ;
}
</script>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>
		</div>
		<div id="menu">
			<ul>
				<li ><a href="homepage.jsp" accesskey="1" title="">Home</a></li>
				<li><a href="login1.jsp" accesskey="2" title="">login</a></li>
				<li><a href="#" accesskey="3" title="">About Us</a></li>
				
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
					<h2 style="font-family:carlito;font-style:italic;font-weight:bold; color:#006666">REGISTRATION</h2>
					
					<form action="eventserv" method="post" onsubmit="return checkform(this)";>
				<center>
					
<table style="margin-top:-20%; margin-right:-35%;">
<div>
<img src="images/register4.jpg" style="float=:left; margin-left:-65%; margin-right:-10%; margin-bottom:-5%;"></img>
</div>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Course ID:</td><td><input type="text" name="courseid" id="courseid">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Title:</td><td><input type="text" name="title" id="title">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Company Name:</td><td><input type="text" name="namecom" id="namecom">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Company ID:</td><td><input type="text" name="idcom" id="idcom">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold;  font-style:italic;">Description:</td><td> <TEXTAREA NAME="descp" ROWS="5"></TEXTAREA>
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">No of students</td><td> <input type="text" name="noofstd" id="noofstd">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Skills</td><td> <input type="text" name="skills" id="skills">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">No of volunteers</td><td> <input type="text" name="noofvol" id="noofvol">
</td></tr>
</table>
<br><br>

		<input type="submit" style="font-family: 'carlito';font-size:medium;color: white; background-color: blue; margin-right:-40%;height:30px;width:75px;border-radius:10px;" value="Register"></input>

 

</center>
  

  </form>
 


 </body>
 
 </div>
			</div>
		</div>
	</div>
	</div>
	
	<div id="footer" class="container">
	<p>&copy; Untitled. All rights reserved. Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>. Photos by <a href="http://fotogrph.com/">Fotogrph</a>.</p>
</div>
</html>
	






