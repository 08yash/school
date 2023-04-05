

<html>
<head>
<title>
Student Data
</title>
</head>
<body>
<style>
body {
    background-image: url("vbs.png");
    background-repeat:no-repeat;
    background-size:100%;
}
</style>

</body>
<body>
<center><h1> Student Details</h1></center>
<table border=1>



<tr>
<th>Student ID</th>



<th> St. Name</th>



<th> Father_name</th>


<th> Class</th>




<th> Date_of_birth</th>
 
</tr>

</table>
</body>
</html>




<%@ page import="java.sql.*" %>

<%

String s1=request.getParameter("SId");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vbps", "root", "johari");
if(!con.isClosed())
{
PreparedStatement ps=con.prepareStatement("Select * from student_details where student_ID='" +s1+ "'");
out.println("<table border=1>");
ResultSet rt=ps.executeQuery();
while(rt.next())
{
out.println("<tr><td>"+rt.getString(1)+ "</td><td>" +rt.getString(2)+ "</td><td>" + rt.getString(3)+ " </td><td>"+rt.getString(4)+  " </td><td>"+rt.getString(5)+ " </td><td>"+rt.getString(6)+"</td></tr>");
}

}
}
catch(Exception e)
{
out.println(e);
}
%>


<html>
<head>
<title>
</title>
</head>
<body>
<center>
<a href=feeDetails.html><h3>Fee Transactions</h3></a>
<a href=payment.html><h3>Pay fees</h3></a>
</center>
</body>
</html>

