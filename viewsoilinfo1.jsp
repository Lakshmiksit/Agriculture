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
<style>
#students {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#students td, #students th {
    border: 1px solid #ddd;
    padding: 8px;
}

#students tr:nth-child(even){background-color: #f2f2f2;}

#students tr:hover {background-color: #ddd;}

#students th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
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
					
					<li ><a href="helpfarmerindex.jsp" accesskey="1" title="">Home Page</a></li>

<li  class="current_page_item"><a href="viewsoilinfo.jsp" accesskey="2" title="">View Soil Info</a></li>					
					
					
					<li><a href="logout.jsp" accesskey="3" title="">Logout</a></li>
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
				<h2>WELCOME </h2>
				</div>
			<p>
			<a href="viewsoilinfo.jsp">Back</a>
	<table border=1 id="students">
	
	<tr>
		
                            
		<th>Soil Description
		<th>Soil req
<th>Crop type
<th>land in hecters



	</tr>

<%@ page import="java.sql.*"%>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","");  

String cnd=request.getParameter("r");

if(cnd.equals("sr"))
{

	String streq=request.getParameter("t4");
               

	
	 String sdesc="";
                  
                     String ctreq="";
                      String linhec="";
                         
                     

		String username="";
	Statement st=con.createStatement();  

	ResultSet rs=st.executeQuery("select * from farmer where streq='"+streq+"'");

	while(rs.next())	
	{
		
		sdesc=rs.getString(3);
		streq=rs.getString(4);
                              ctreq=rs.getString(5);
                               linhec=rs.getString(6);
                                   

                            out.print("<tr>");
			
			
			                out.print("<td>"+sdesc);
                                           out.print("<td>"+streq);
                                            out.print("<td>"+ctreq);
                                              out.print("<td>"+linhec);
                                            
                                                
			
			out.print("</tr>");
	}

}
else
{
	
  String streq="";             
String sdesc="";
                  
                     String ctreq="";
                      String linhec="";
                         
                    
	Statement st=con.createStatement();  
	ResultSet rs=st.executeQuery("select * from farmer where streq ='"+streq+"'");	
		
		while(rs.next())
		{
                                              
                                         
                                            sdesc=rs.getString(3);
		
                              ctreq=rs.getString(5);
                               linhec=rs.getString(6);

			out.print("<tr>");
			
			
                                           
                                                out.print("<td>"+streq);
                                             out.print("<td>"+sdesc);
                  
                     out.print("<td>"+ctreq);
                      out.print("<td>"+linhec);
                         
                    
			out.print("</tr>");
		}
}



%>
</table>
</p>
			 </div>
		<div id="sidebar">
			<div class="box1">
				<div class="title">



					
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
