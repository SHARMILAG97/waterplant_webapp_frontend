<html>
<head>
<title>Reserve</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>

<body style="text-align:center">
<script type="text/javascript">
       function status() {
           window.location.href = "useroperations.jsp";
       }
 </script>
 <script>

function register() {
    event.preventDefault();
   var reservecans= document.getElementById("reservecans").value;
    var formData = "reservecans=" + reservecans;
    console.log(formData);

    var user =JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
        
    var url = "http://localhost:8080/waterplant_web/ReserveServlet?"+"&Id="+user.Id+"&Name="+user.Name+"&Mobileno="+user.Mobileno+"&Address="+user.Address + "&"+formData;
    console.log(url);    
    var formData = {};
    $.get(url, function(response) {
        console.log(response);
       
        console.log(response.errorMessage);
        var msg=JSON.parse(response);
        
     
        if (msg.errorMessage!=null) {
           
            window.location.href = "userlogin.jsp";
        } else {
           
           status();
        }
    });
}
</script>

<jsp:include page="headers.jsp"></jsp:include>
<form onsubmit="register()">
<label><h4>Enter No of Cans to Reserve</h4></label>
</br>
<label>Reserve Cans:</label>
<input type="number" name="reservecans" id="reservecans" placeholder="Enter No of Cans" required autofocus/>
<br/>
<input type="submit" value="Submit" class="btn btn-success">
<button type="reset" class="btn btn-danger" value="clear">clear</button>
</form>