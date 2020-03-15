<%@ page import = "java.sql.*"%>

<%

String username=(String) session.getAttribute("jun");
String fname=request.getParameter("t3");
String lname=request.getParameter("t4");
String address =request.getParameter("t5");
String gender=request.getParameter("t6");
String emailid=request.getParameter("t7");
String streq=request.getParameter("t8");
String ctreq=request.getParameter("t9");
String mobileno=request.getParameter("t10");
String plantdisease=request.getParameter("t11");
 
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","");  

Statement st=con.createStatement();  
String sql="update farmer set fname='"+fname+"', lname='"+lname+"', address='"+address+"', gender='"+gender+"', emailid='"+emailid+"', streq='"+streq+"', ctreq='"+ctreq+"', mobileno='"+ mobileno+"',plantdisease='"+plantdisease+"' where username='"+username+"'";
st.executeUpdate(sql);
response.sendRedirect("updateinfo1success.html");

%>	

