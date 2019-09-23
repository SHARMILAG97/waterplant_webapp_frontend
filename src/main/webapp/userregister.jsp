<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserRegister</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>


<style type="text/css">
   label{
  width: 175px;
  display: inline-block;
  text-align: center;
   }
</style>



</head>


<body style="text-align:center">

<jsp:include page="headers.jsp"></jsp:include>
<%
String message = request.getParameter("message");
if (message != null){
	out.println("<font color='red'>" + message + "</font>");
}
%>

<script>

function register() {
    
    event.preventDefault();
    var name = document.getElementById("name").value;
    var mobileno = document.getElementById("mobileno").value;
    var password = document.getElementById("password").value;
    var address = document.getElementById("address").value;
    var formData = "name="+name+ "&mobileno=" + mobileno + "&password=" + password+ "&address="+address;
    console.log(formData);

    var url = "http://localhost:8080/waterplant_web/RegisterServlet?" + formData;
    console.log(url);
    var formData = {};
    $.get(url, function(response) {
        console.log(response);

        var msg=JSON.parse(response);
      
        if (msg.errorMessage!=null) {
            
            window.location.href = "userregister.jsp";
        } else {
            alert(" Registered Successfully");
            window.location.href = "userlogin.jsp";
        }
    });
}

    
</script>
<br/><h3>USER REGISTER</h3><br/>

<form onsubmit="register()">
<label>NAME:</label>
<input type="text" name="name" id="name" size=20 placeholder="Enter Name" required autofocus/>
<br/></br>

<label>MOBILE_NUMBER:</label>
<input type="number" name="mobileno" id="mobileno" size=25 placeholder="Enter Mobile No" required />
<br/></br>

<label>PASSWORD:</label>
<!--<input type="password" name="password" id="password" placeholder="Enter Password" required />  -->
<input type="password" name="password" id="password" size=20 placeholder="Enter Password" required
 pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
 title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters required "/>
<br/></br>
<label>ADDRESS:</label>
<input type="text" name="address" id="address" size=20 placeholder="Enter Address" required />
<br/></br><br/>
<input type="submit" value="Submit" class="btn btn-success">
<button type="reset" class="btn btn-danger" value="clear">clear</button>
</form>

</body>
</html>