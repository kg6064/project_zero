
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
$('input[type=radio][name=select]').click(function(){
    var related_class=$(this).val();
    $('.'+related_class).prop('disabled',false);

    $('input[type=radio][name=select]').not(':checked').each(function(){
        var other_class=$(this).val();
        $('.'+other_class).prop('disabled',true);
    });
});
});
</script>
</head>
<style>
body{background-color:lightblue;
}
h1{background-color:#808080;color:white;
border-radius: 4px;}
input[type=submit]{ width: 100%;
    background-color: #808080;
    color: white;
    padding: 12px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;}
input[type=submit]:hover {
    background-color: #000000;
}

table{width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 2px solid black;
    border-radius: 4px;
    box-sizing: border-box;}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
<div class="jumbotron">
<h2>User Registration Page</h2>
<p>This page uses HTML, CSS, JavaScript, JSP, JQuery and Bootstrap concepts.</p>
</div>
<div class="container">
<p>Please select radio button according to action you want to perform</p>
<form method="post" action="insert.jsp">
<h1>
  <input type="radio" name="select" value="register"> Register User
  <input type="radio" name="select" value="view"> View User<br>
</h1>
<table class="table">
  <tbody>
    <tr>
    <td><label><b>First Name</b></label></td>
    <td><input type="text" class="register" name="uname1" disabled="true" required><br></td>
    </tr>
    <tr>
    <td><label><b>Second Name</b></label></td>
    <td><input type="text" class="register" name="uname2" disabled="true" required><br></td>
    </tr>
    <tr>
    <td><label><b>Age</b></label></td>
    <td><input type="text" name="age" class="register" disabled="true" required><br></td>
    </tr>
    <tr>
    <td><label><b>Address</b></label></td>
    <td><input type="text" name="address" class="register"  disabled="true"></td>
    </tr>
    </tbody>
</table>
    <input type="submit" value="Register" name="reply" class="register"/>
    </form>
    <form action="response.jsp">
    <input type="submit" value="View" name="reply1" class="view"/>
    </form>
</div>
</body>
</html>
