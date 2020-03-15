
<%@ page import = "java.sql.*"%>

<%

String username=request.getParameter("t1");
String password=request.getParameter("t2");
String fname=request.getParameter("t3");
String lname=request.getParameter("t4");
String address=request.getParameter("t5");
String gender=request.getParameter("t6");
String emailid=request.getParameter("t7");


String streq=request.getParameter("t8");
String ctreq=request.getParameter("t9");
String mobileno=request.getParameter("t10");
String plantdisease=request.getParameter("t11");

String temp="";

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","");  

Statement st=con.createStatement();  
	
ResultSet rs=st.executeQuery("select * from farmer where username='"+username+"'");

while(rs.next())
{
	temp=rs.getString(1);
}

if(temp.equals(""))
{
	Statement st1=con.createStatement();  
	String sql="insert into farmer values('"+username+"','"+password+"','"+fname+"','"+lname+"','"+address+"','"+gender+"','"+emailid+"','"+streq+"','"+ctreq+"','"+mobileno+"','"+plantdisease+"')";

	st1.executeUpdate(sql);
	response.sendRedirect("farmerregsuccess.html");

	
}
else
{
	response.sendRedirect("farmerregerror.html");	
}
%>