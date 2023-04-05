


<html>
<head>
<title>
</title>
</head>
<style>
body {
    background-image: url("vbs.png");
    background-repeat:no-repeat;
    background-size:100%;
}
</style>
<body>
<center><h1>TRANSACTION DATA</h1></center>
<table border=0>



<tr>
<td>Student ID</td>
</td>


<td> Trans Date</td>
</td>


<td> Amount</td>
</td>

<td> Cashier_ID</td>
</td>
</tr>

</table>
<script>
<%@ page import="java.sql.*" %>

<%

String s1=request.getParameter("SId");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vbps", "root", "johari");
if(!con.isClosed())
{
PreparedStatement ps=con.prepareStatement("Select * from fee_details where student_ID='" +s1+ "'");
out.println("<table border=1>");
ResultSet rs=ps.executeQuery();

while(rs.next())

{
out.println("<tr><td>"+rs.getString(1)  + "</td><td>" +  rs.getString(2)+ "</td><td>"+ rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
}
}
}
catch(Exception e)
{
out.println(e);
}
%>
</script>

<li><h3><a href="payment.html">Pay Fees</h3></a></li>
</body>
</html>





<html>

<body>


</body>
</html>


