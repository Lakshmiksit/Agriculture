<%@ page import="java.sql.*"%>
<%
String farmername=request.getParameter("t1");
String password=request.getParameter("t2");
String sdesc=request.getParameter("t3");
String streq=request.getParameter("t4");
String ctreq=request.getParameter("t5");
String linhec=request.getParameter("t6");
String helpername=request.getParameter("t7");
String pesticide=request.getParameter("t8");
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
	Statement st1=con.createStatement();  
       String sql="insert into helpfarmer values('"+farmername+"','"+password+"','"+sdesc+"','"+streq+"','"+ctreq+"','"+linhec+"','"+helpername+"','"+pesticide+"')";

       st1.executeUpdate(sql);
        response.sendRedirect("helpfarmerregsuccess.html");
}
else
{
	response.sendRedirect("helpfarmerregerror.html");	
}
%>


