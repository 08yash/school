<%@ page import="java.sql.*" %>

<%
Connection con=null;
Statement st=null;
String SID=request.getParameter("sid");
String date=request.getParameter("date");
String amount=request.getParameter("amnt");
String CID=request.getParameter("cid");


try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vbps", "root", "johari");
st=con.createStatement();
String query="Insert into fee_details values('" + SID +"', '" + date + "', '" + amount + "', '" + CID + "')"; 

st.executeUpdate(query);

out.println("Fee Paid Successfully");
}

catch(Exception e)
{
out.println(e);
}
%>

<html>
<head>
<title>
Done Payment
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
<br>
<a href=index.html><h3>Home Page</h3></a><br>
<a href=feeDetails.html><h3>Transactions</h3></a>
</body>
</html>


