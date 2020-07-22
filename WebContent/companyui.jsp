<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>



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
<script language="JavaScript" type="text/javascript">
<!--
function checkform ( form )
{
  // see https://www.thesitewizard.com/archive/validation.shtml
  // for an explanation of this script and how to use it on your
  // own website

  // ** START **
  if (form.cname.value == ""||form.cid.value==""||form.cmail.value==""||form.ccontact.value==""||form.cpass.value=="") {
    alert( "Please fill all the fields" );
    form.cname.focus();
    form.cid.focus();
    form.cmail.focus();
    form.ccontact.focus();
    form.cpass.focus();
    
    return false ;
  }
  // ** END **
  return true ;
}
</script>
<body>
<form method="post">
<%String com="";
String id=session.getAttribute("param").toString();
//System.out.println(id);%>
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost/dell", "root", "root");
				Statement st = con.createStatement();
				/*Object idcom=session.getAttribute("comid");
				String id=(String)idcom;
				System.out.println("comid"+id);*/
				ResultSet rs = st.executeQuery("select name from company where email='"+id+"'");
				if(rs.next()){
				 com=rs.getString(1);
				// System.out.println(com);
				}
					%>
				 
			
	<%
			}catch (Exception e) {
			e.printStackTrace();
		}
	%>
	
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
						<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>
			
		</div>
		<div id="menu">
			<ul>
				<li ><a href="homepage.jsp" accesskey="1" title="">Home</a></li>
				<li><a href="homepage.jsp" accesskey="2" title="">Logout</a></li>
								<li><a href="changepass.jsp" accesskey="3" title="">Change password</a></li>
				<li><a href="vol_register.jsp">Volunteer register</a>
				<li><a href="event2.jsp">My Events</a>
				
 				
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
				
					
					<div>
					<h1 style="font-family:carlito;font-style:italic;font-weight:bold;"><center><%=com.toUpperCase() %></center></h1>
				<br><br><center>	<p style="font-family: carlito; font-size: 140%;font-style:italic; font-weight:bold;">Register your new events.
					</p></center>
<img src="images/company.jpg" style="float=:left;"></img>
<img src="images/company4.jpg" style="float=:middle;"></img>

<img src="images/company5.jpg" style="float=:right;"></img>

					</div>
					
					

  


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
	
