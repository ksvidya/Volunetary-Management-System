<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="javax.servlet.*"%>
<%@page import="java.util.Enumeration" %>



<%@page import="java.text.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">

		#makeMeScrollable
		{
			width:100%;
			height: 330px;
			position: relative;
		}
		
		/* Replace the last selector for the type of element you have in
		   your scroller. If you have div's use #makeMeScrollable div.scrollableArea div,
		   if you have links use #makeMeScrollable div.scrollableArea a and so on. */
		#makeMeScrollable div.scrollableArea img
		{
			position: relative;
			float: left;
			margin: 0;
			padding: 0;
			/* If you don't want the images in the scroller to be selectable, try the following
			   block of code. It's just a nice feature that prevent the images from
			   accidentally becoming selected/inverted when the user interacts with the scroller. */
			-webkit-user-select: none;
			-khtml-user-select: none;
			-moz-user-select: none;
			-o-user-select: none;
			user-select: none;
		}
	</style>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Voluntary Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link rel="Stylesheet" type="text/css" href="css/smoothDivScroll.css" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>

<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#" style="font-family:carlito; font-style:italic; text-transform: uppercase;">  Volunteer Management  </a></h1>
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="homepage.jsp" accesskey="1" title="">Home</a></li>
				<li><a href="selectsignup.jsp" accesskey="2" title="">Sign up</a></li>
				<li><a href="login1.jsp" accesskey="3" title="">Login</a></li>
				<li><a href="frontevent.jsp" accesskey="4" title="">Courses</a></li>
				<li><a href="#" accesskey="5" title="">About Us</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
					
				<center><h1><b>WELCOME</b></h1></center>
					

<div id="makeMeScrollable">
		<img src="images/project/amazon.png" alt="Demo image" id="field" />
		<img src="images/project/apple.jpg" alt="Demo image" id="gnome" />
		<img src="images/project/cisco.png" alt="Demo image" id="pencils" />
		<img src="images/project/dell image.png" alt="Demo image" id="golf" />
		<img src="images/project/google.jpg" alt="Demo image" id="river" />
		<img src="images/project/hp.jpg" alt="Demo image" id="train" />
		<img src="images/project/ibm.png" alt="Demo image" id="leaf" />
		
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>

	<!-- jQuery UI (Custom Download containing only Widget and Effects Core)
	     You can make your own at: http://jqueryui.com/download -->
	<script src="js/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
	
	<!-- Latest version (3.1.4) of jQuery Mouse Wheel by Brandon Aaron
	     You will find it here: https://github.com/brandonaaron/jquery-mousewheel -->
	<script src="js/jquery.mousewheel.min.js" type="text/javascript"></script>

	<!-- jQuery Kinectic (1.8.2) used for touch scrolling -->
	<!-- https://github.com/davetayls/jquery.kinetic/ -->
	<script src="js/jquery.kinetic.min.js" type="text/javascript"></script>

	<!-- Smooth Div Scroll 1.3 minified-->
	<script src="js/jquery.smoothdivscroll-1.3-min.js" type="text/javascript"></script>

	<!-- If you want to look at the uncompressed version you find it at
	     js/jquery.smoothDivScroll-1.3.js -->

	<!-- Plugin initialization -->
	<script type="text/javascript">
		// Initialize the plugin with no custom options
		$(document).ready(function () {
			// None of the options are set
			$("div#makeMeScrollable").smoothDivScroll({
				autoScrollingMode: "onStart"
			});
		});
	</script>
	
    				<p class="button-style"><a href="#">Join us...We help to overcome the gap between college and industry by helping the students to meet the industrial experts.</a></p>
				</div>
			</div>
		</div>
	</div>
	
	<div id="page" class="container">
		<div id="content">
			<div>
				<ul class="style1">
					<li class="first">
						<h3>What others tell?</h3>
						<p>Dell said that it will be an excellent oppurtunity for students to know what they want from industrial experts... </p>
						<p><a href="#" class="button-style">Read More</a></p>
					</li>
					<li>
						<h3>How do we do this?</h3>
						<p>We allow three types of users to register...</p>
						<p><a href="#" class="button-style">Read More</a></p>
					</li>
				</ul>
				</div>
</div>
			
		<div id="sidebar">
			<h2>Oncoming Events</h2>
			<% boolean ischecked=false;
	String x1;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost/dell", "root", "root");
				Statement st = con.createStatement();
				/*Object idcom=session.getAttribute("comid");
				String id=(String)idcom;
				System.out.println("comid"+id);*/%>
			
			<ul class="style3">
			<%int j=0; %>
			
			<% ResultSet rs = st.executeQuery("SELECT * FROM event ORDER BY RAND()");
				while (rs.next()) {
		%>
				
					<%Date d=new Date();
						DateFormat df=new SimpleDateFormat("E MMM dd hh:mm:ss Z yyyy");
						Date date1=df.parse(d.toString());
						System.out.println(date1);
						System.out.println(rs.getDate(11));
					    Date d1=rs.getDate(11);
					    int i;
						i=d1.compareTo(date1);
						System.out.println(i);
						%>
						<li class="first">
						<%if(i>0){ %>
					<p class="date"><%=rs.getDate(11)%> </p>
				   <p><a href="login.jsp "><%=rs.getString(5)%></a></p>
				   <%
				   j++;} %>
					
				</li>
				<%if(j==3)break; %>
				<%
			}
	%>
	
			
			</ul>
		</div>
	</div>
</div>
	
<%
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
<div id="footer" class="container">
	<p>Volunteer management system.</p>
</div>
</body>
</html>
