<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserLogin</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>

<style type="text/css">
   label{
  width: 130px;
  display: inline-block;
  text-align:center;
   }
</style>



</head>

<body style="text-align:center">

<jsp:include page="headers.jsp"></jsp:include>
<br/><h2>USER LOGIN</h2><br/>
<script type="text/javascript">
       function status() {
          
           window.location.href = "useroperations.jsp";
       }
 </script>
 <script>

function register() {
   
    event.preventDefault();
   var mobileno = document.getElementById("mobileno").value;
    var password = document.getElementById("password").value;
    var formData = "mobileno=" + mobileno + "&password=" + password;
    console.log(formData);
  
    var url = "http://localhost:8080/waterplant_web/UserLoginServlet?" + formData;
    console.log(url);    
    var formData = {};
    $.get(url, function(response) {
        console.log(response);
        localStorage.setItem("LOGGED_IN_USER",response);
        console.log(response.errorMessage);
        var msg=JSON.parse(response);
     
        if (msg.errorMessage!=null) {
            alert("Invalid Username/Password");
            window.location.href = "userlogin.jsp";
        } else {
            
           status();
        }
    });
}
</script>
<%
String message = request.getParameter("message");
if (message != null){
	out.println("<font color='red'>" + message + "</font>");
}
%>


<form onsubmit="register()">
<label>Mobile_Number:</label>
<input type="number" name="mobileno" id="mobileno" placeholder="Enter Mobile No" required autofocus/>
<br/><br/>

<label>Password:</label>
<input type="password" name="password" id="password" placeholder="Enter Password" required />
<br/><br/>

<input type="submit" value="LOGIN" class="btn btn-success">
<button type="reset" class="btn btn-danger" value="clear">CLEAR</button>
</form>

<script >

function displayName(){

	var user =JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
	var name= user.Name;
	document.getElementById("name").innerHtml = "Welcome....."+ name;
	return name;
}

displayName();
</script>


</body>
</html>