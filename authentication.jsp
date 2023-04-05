<%@ page import="java.sql.*" %>

<%
Connection con=null;
ResultSet rs=null;
Statement st=null;
String u=request.getParameter("user");
String p=request.getParameter("p1");


try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vbps", "root", "johari");
st=con.createStatement();
String query="Select * from login_details where username='"+u+"' and password='"+p+"'"; 
rs= st.executeQuery(query);

if(rs.next())
{
response.sendRedirect("success.jsp");
}
else
{
response.sendRedirect("error.html");
}

}

catch(Exception e)
{
out.println(e);
}
%>