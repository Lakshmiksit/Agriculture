<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Agriculture</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<%

String fname=(String) session.getAttribute("fn");
%>
<body>
<div id="header-wrapper">
	<div id="header-wrapper2">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">Agriculture</a></h1>
			</div>
			<div id="menu">
				<ul>
					<li  class="current_page_item"><a href="farmerindex.jsp" accesskey="1" title="">Home Page</a></li>
<li><a href="soiltype.jsp" accesskey="2" title="">Soil Type</a></li>
<li ><a href="uploadpd.html" accesskey="3" title="">Upload diseasedplant</a></li>

					
					<li><a href="searchpest.html" accesskey="4" title="">Search Pesticide</a></li>

					<li><a href="weatherinfo.html" accesskey="5" title="">Weather Info</a></li>
					<li><a href="logout.jsp" accesskey="6" title="">Logout</a></li>
				</ul>
			</div>
		</div>
		<div class="major">
			<h2>Farmer serves the universe,we shall serve you!</h2>
			<span></span></div>
	</div>
</div>
<div id="wrapper">
	<div id="page" class="container">
		<div id="content">
			<div class="title">
				<h2>WELCOME <%=fname%></h2>
				</div>
			<p></p>
			 </div>
		<div id="sidebar">
			<div class="box1">
				<div class="title">



					<h2><u>SETTINGS</u></h2>
				</div>
				<ul class="style2">
					<li><a href="updateinfo1.jsp">Update Info</a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div id="portfolio-wrapper">
<table>
	<div id="portfolio" class="container">
		<div class="title">
			<h2>Latest Crops being Grown in India</h2>
		</div>
		
	</div>
</table>
</div>

<div id="copyright" class="container">
	<p>Copyright (c) 2019 agriculturefarm.com. All rights reserved | Design by Lakshmi Prasanna.B,Nikitha.</p>
</div>
</body>
</html>
