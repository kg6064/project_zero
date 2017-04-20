<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Database Response</title>
<style>
body{background-color:lightblue}
table{width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 2px solid black;
    border-radius: 4px;
    box-sizing: border-box;}
</style>
</head>
<body>

</body>
<form method="post">

<table>
<tr>
<td>ID</td>
<td>FIRSTNAME</td>
<td>SECONDNAME</td>
<td>AGE</td>
<td>ADDRESS</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/userbase";
String username="root";
String password="root";
String query="select * from user_info";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
%>
    <tr>
    <td><%=rs.getInt("ID") %></td>
    <td><%=rs.getString("FIRSTNAME") %></td>
    <td><%=rs.getString("SECONDNAME") %></td>
    <td><%=rs.getString("AGE") %></td>
    <td><%=rs.getString("ADDRESS") %></td>
    </tr>
<%
}
%>

</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}

%>

</form>
</html>
