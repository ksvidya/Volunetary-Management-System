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
border-spacing:1em;}
</style>
<script language="JavaScript" type="text/javascript">
<!--
function checkform(form){
	var phoneno=/^\d{10}$/;
	
		
if(form.coname.value==""|| form.coid.value==""|| form.coemail.value==""|| form.coinfo.value==""|| !form.coinfo.value.match(phoneno)||  form.password.value=="")
	{
	if(!form.coinfo.value.match(phoneno) && !form.coinfo.value=="")
		alert("Invalid contact information");
	else
	alert("all fields must be filled ");
	
	
	
	return false;
	}

	return true;
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

<center>
<form action="registration" method="post" onsubmit="return checkform(this)";>
<table style="margin-top:-25%; margin-right:-35%;">
<div>
<img src="images/register3.png" style="float=:left; margin-left:-65%; margin-right:-10%;"></img>
</div>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">College name:</font></td><td><input type="text" name="coname"></td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">College id:</font></td><td><input type="text" name="coid"></td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Email:</font></td><td><input type="email" name="coemail"></td></tr>
<tr><td>		
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Contact Information:</font></td><td><input type="text" name="coinfo"></td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%;font-weight:bold; font-style:italic;">Password:</font></td><td><input type="password" id="txtPassword" name="password"></td></tr>
</table>

<span id="password_strength"></span>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#txtPassword").bind("keyup", function () {
            //TextBox left blank.
            if ($(this).val().length == 0) {
                $("#password_strength").html("");
                return;
            }
 
            //Regular Expressions.
            var regex = new Array();
            regex.push("[A-Z]"); //Uppercase Alphabet.
            regex.push("[a-z]"); //Lowercase Alphabet.
            regex.push("[0-9]"); //Digit.
            regex.push("[$@$!%*#?&]"); //Special Character.
 
            var passed = 0;
 
            //Validate for each Regular Expression.
            for (var i = 0; i < regex.length; i++) {
                if (new RegExp(regex[i]).test($(this).val())) {
                    passed++;
                }
            }
 
 
            //Validate for length of Password.
            if (passed > 2 && $(this).val().length > 8) {
                passed++;
            }
 
            //Display status.
            var color = "";
            var strength = "";
            switch (passed) {
                case 0:
                case 1:
                    strength = "Weak";
                    color = "red";
                    break;
                case 2:
                    strength = "Good";
                    color = "darkorange";
                    break;
                case 3:
                case 4:
                    strength = "Strong";
                    color = "green";
                    break;
                case 5:
                    strength = "Very Strong";
                    color = "darkgreen";
                    break;
            }
            $("#password_strength").html(strength);
            $("#password_strength").css("color", color);
        });
    });
</script>






<br><br><input type="submit" style="font-family: 'carlito';font-size:medium;color: white; background-color: blue; margin-right:-55%;height:30px;width:75px;border-radius:10px;" value="Register"></input>




</form>
</center>
</div>
</div>
</div>
</div>
</div>
</body>

</html>