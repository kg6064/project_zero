<%@page import="java.sql.*,java.util.*"%>
<%
String name1=request.getParameter("uname1");
String name2=request.getParameter("uname2");
String age=request.getParameter("age");
String address = request.getParameter("address");
        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userbase", "root", "root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into user_info(Firstname,Secondname,Age,Address) values('"+name1+"','"+name2+"','"+age+"','"+address+"')");
        %><html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{background-color:lightblue}
h1{background-color:#808080;color:white;border-radius: 4px}
</style>
</head>
<body>
<div class="jumbotron">
<h2>User Registration Page</h2>
<p>This page uses HTML, CSS, JavaScript, Jsp, JQuery and Bootstrap concepts</p>
</div>
<div class="container">
<h1>USER REGISTERED SUCCESSFULLY</h1>
</div>
</body>
</html>
        <%}
        catch(Exception e){%>
 <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{background-color:lightblue}
h{background-color:#808080;color:white}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="jumbotron">
<h2>User Registration Page</h2>
<p>This page uses HTML, CSS, JavaScript, Jsp, JQuery and Bootstrap concepts</p>
</div>
<div class="container">
<h>USER NOT REGISTERED</h>
</div>
</body>
</html><%
System.out.print(e);
        e.printStackTrace();
        }
        %>
