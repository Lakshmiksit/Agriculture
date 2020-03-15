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

<body>
<div id="header-wrapper">
	<div id="header-wrapper2">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">Agricult</a></h1>
			</div>
			<div id="menu">
				<ul>
					<li  class="current_page_item"><a href="farmerindex.jsp" accesskey="1" title="">Home Page</a></li>
<li><a href="soiltype.jsp" accesskey="2" title="">Soil Type</a></li>

					
					<li><a href="searchpest.html" accesskey="4" title="">Search Pesticide</a></li>

					<li><a href="weatherinfo.html" accesskey="2" title="">Weather Info</a></li>
					<li><a href="logout.jsp" accesskey="6" title="">Logout</a></li>
				</ul>
			</div>
		</div>
		<div class="major">
			<h2>Imagination rules the universe,we shall dream it!</h2>
			<span></span></div>
	</div>
</div>
<div id="wrapper">
	<div id="page" class="container">
		<div id="content">
			<div class="title">
				<h2>Update Your Details</h2>
				<div class="alert alert-success" class="form-control">
<strong>SUCCESS! </strong>Your details are updated successfully!</div>
				</div>
			<p>
<form name="f" method="post" action="updateinfo11.jsp">
<%@ page import = "java.sql.*"%>
<%
String username=(String) session.getAttribute("fun");

String fname="";
String lname="";
String address="";
String gender="";
String emailid="";
String streq="";
String ctreq="";
String mobileno="";
String plantdisease="";

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","");  
Statement st=con.createStatement();  
	
ResultSet rs=st.executeQuery("select * from farmer where username='"+username+"'");

while(rs.next())
{
	fname=rs.getString(3);
	lname=rs.getString(4);
address=rs.getString(5);
gender=rs.getString(6);
email=rs.getString(7);
streq=rs.getString(8);
ctreq=rs.getString(9);
mobileno=rs.getString(10);
plantdisease==rs.getString(11);
}

%>



<table>
<tr>
<td><b>FirstName </b><td><input type="text" name="t3"class="form-control" value="<%=fname%>"></tr>
<tr>
<td><b>LastName </b><td><input type="text" name="t4"class="form-control" value="<%=lname%>"></tr>
<tr>

<tr><td><b>Address</b>
   <td><textarea rows="5" cols="30" name="t5" class="form-control"><%=address%></textarea> 
                        </tr>

<tr>
<td><b>Gender</b> 
<td><select name="t6"class="form-control" >value="<%=gender%>">
<option value="Female">Female
<option value="Male">Male
</select>
</tr>
<tr>
<td><b>Email </b><td><input type="text" name="t7" class="form-control"value="<%=email%>"></tr>


<td><b>Soil Type</b><td><input type="text" name="t8"class="form-control" value="<%=streq%>"></tr>
<tr>
<td><b>Crop Type</b> <td><input type="text" name="t9"class="form-control" value="<%=ctreq%>"></tr>


<tr><td><b>Mobileno</b>
   <td><textarea rows="5" cols="30"  name="t10" class="form-control"><%=mobileno%></textarea> 

    </tr>
<tr><td><b>plant Disease</b>
   <td><textarea rows="5" cols="30"  name="t11" class="form-control"><%=plantdisease%></textarea> 

    </tr>


<tr>
                 <td><br>
                   <button type="submit" name="s"  class="btn btn-primary">Update</button> 
                  <td><br><button type="reset" name="rs" class="btn btn-primary">Clear Form</button> </tr>
                   
</table>

	


</p>
			 </div>
		<div id="sidebar">
			<div class="box1">
				<div class="title">
					<h2><u>SETTINGS</u></h2>
				</div>
				<ul class="style2">
					<li><a href="updateinfo1.jsp">Update Info</a></li>
					
					
				</ul>
			</div>
		</div>
	</div>
</div>

<div id="portfolio-wrapper">
<table>
	<div id="portfolio" class="container">
		<div class="title">
			<h2>Our Clients</h2>
		</div>
		<table width=100%>
		<tr>
			<td><img src="images/oracle.png">
			<td><img src="images/infosys.png">
			<td><img src="images/ibm1.png">
			<td><img src="images/google.png">
		</tr>
                                <tr>   <td><img src="images/honeywell.png">
                                           <td><img src="images/ntt.png">
                                          <td><img src="images/micro.png">
                                           <td><img src="images/cog.png">
                                     </tr>
                                 <tr>   <td><img src="images/cap.png">
                                           <td><img src="images/wipro.png">
                                          <td><img src="images/tcs.png">
                                           <td><img src="images/acc.png">
                                     </tr>
		</table>
	</div>
</table>
</div>

<div id="copyright" class="container">
	<p>Copyright (c) 2019 zaikaconsultancy.com. All rights reserved | Design by Skillous Solutions Pvt Ltd.</p>
</div>
</body>
</html>