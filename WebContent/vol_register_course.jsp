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
<title>Angled Theme by TEMPLATED</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script 
<![endif]-->
</head>
<style>

table {  
    color: #333;
    font-family: Helvetica, Arial, sans-serif;
    width: 640px; 
    border-collapse: 
    collapse; border-spacing: 0; 
}

td, th {  
    border: 1px solid transparent; /* No more visible border */
    height: 30px; 
    transition: all 0.3s;
     /* Simple transition for hover effect */
}

th {  
    background: #DFDFDF;  /* Darken header a bit */
    font-weight: bold;
    font-size:150%; 
}

td {  
    background: #FAFAFA;
    text-align: center;
    font-size:120%; 
    width:15%;
}

/* Cells in even rows (2,4,6...) are one color */        
tr:nth-child(even) td { background: #F1F1F1; }   

/* Cells in odd rows (1,3,5...) are another (excludes header cells)  */        
tr:nth-child(odd) td { background: #FEFEFE; }  

tr td:hover { background: #666; color: #FFF; }  
/* Hover cell effect! */
</style>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
						<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>

		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="homepage.jsp" accesskey="1" title="">Home</a></li>
				<li><a href="changepass.jsp" accesskey="2" title="">Change Password</a></li>
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
					
					<form action="vol_register_course" method="post">
					<center><h3 style="font-family:carlito;color:white; font-style:italic;;">  Suggested Courses.. </h2>
</center>
			
				<div class="container">    
				<center>	     
  <table class="table table-bordered table-striped">
    <thead>
     <tr><center></center>
			<th>Company name</th>
			<th>Course</th>
		    </center>
		</tr>
    </thead>
	
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost/dell", "root", "root");
				Statement st = con.createStatement();
				String id=session.getAttribute("param").toString();
								String comp_skillset="",com_type="",volt_id="3",sug_com="";
				int rem_stu=0,rem_vol=0;
				ResultSet res1 =st.executeQuery("select * from register_vol where email='"+id+"'");
				while(res1.next())
				{ 
					comp_skillset=res1.getString(7);
					 com_type=res1.getString(6);
					 //vol_id=res1.getString(10);
					 //System.out.println(comp_skillset);
					 //String s  = "select * from vol_login where course='"+comp_skillset.toString()+"'";
				//System.out.println(s);
				ResultSet res =st.executeQuery("select * from vol_login where course='"+comp_skillset+"'");
				//System.out.println(res);
				while(res.next())
				{
				     sug_com=res.getString(1);
					// System.out.println(sug_com);
					
					 rem_stu=Integer.parseInt(res.getString(3));
					 rem_vol=Integer.parseInt(res.getString(4));
			    if(com_type.equals("student")&&rem_stu>0 )
				{
					System.out.println(comp_skillset);
					System.out.println(sug_com);
					%>
					<tr>
			<td><%=comp_skillset%></td>
		
			<td><%=sug_com%></td>
			<td><input type="radio" value=<%=res.getString(1)%> name="event_id" id="c1" ></td>
			<td><input type ="email" value=<%=id%>name="email" ></td>
			
		</tr>
		<% 
				}
				else if(com_type.equals("volunteer")&&rem_vol>0)
				{
					System.out.println(comp_skillset);
					System.out.println(sug_com);
					%>
					<tr>
			<td><%=comp_skillset%></td>
		
			<td><%=sug_com%></td>
			
			<td><input type="radio" value=<%=res.getString(1)%> name="event_id" id="c1" ></td>
			<td><input type ="email" value=<%=id%>name="email" ></td>
		</tr>
		<% 
				}
				
				}
			}
			}
			
			catch(Exception e){
				e.printStackTrace();
				
			}
		
		
			
	%>
</table>
</center>
</div>
<br><br>
					
				
	<center>
  	
  <a href="homepage.jsp"><input type="submit" style="font-family: 'carlito'; font-size: larger;color: white; background-color: blue;" value="Register"></input>
</a>	
</center>
	</form>	
			</div>
		</div>
	</div>
	</div>
			
			


</body>
<div id="footer" class="container">
	<p>&copy; Untitled. All rights reserved. Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>. Photos by <a href="http://fotogrph.com/">Fotogrph</a>.</p>
</div>

</html>
