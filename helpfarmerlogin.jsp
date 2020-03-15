<%@ page import = "java.sql.*"%>

<%

String farmername=request.getParameter("t1");
String password=request.getParameter("t2");
String temp="";


Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","");  

Statement st=con.createStatement();  
	
ResultSet rs=st.executeQuery("select * from helpfarmer where farmername='"+farmername+"'");

while(rs.next())
{
	temp=rs.getString(1);
	
}

if(temp.equals(""))
{
	response.sendRedirect("helpfarmerloginerror.html");	
}
else
{
	
	session.setAttribute("farmer",farmername);
	response.sendRedirect("helpfarmerindex.jsp");	
}

%>