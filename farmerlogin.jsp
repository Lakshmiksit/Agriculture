<%@ page import = "java.sql.*"%>

<%

String username=request.getParameter("t1");
String password=request.getParameter("t2");
String temp="";
String fname="";

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","");  

Statement st=con.createStatement();  
	
ResultSet rs=st.executeQuery("select * from farmer where username='"+username+"'");

while(rs.next())
{
	temp=rs.getString(1);
	fname=rs.getString(3);
}

if(temp.equals(""))
{
	response.sendRedirect("farmerloginerror.html");
}
else
{
	session.setAttribute("fun",username);
	session.setAttribute("fn",fname);
	response.sendRedirect("farmerindex.jsp");	
}

%>