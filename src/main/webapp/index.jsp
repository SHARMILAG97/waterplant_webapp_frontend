<html>
<head>
<title>Water Plant</title>
<!-- To include external JS  files -->
<script src="js/app.js"></script>


<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>


</head>
<body style="text-align:center">
<jsp:include page="headers.jsp"></jsp:include>

<h2> Welcome to WaterPlant </h2></br>
<%
String message = request.getParameter("message");
if (message != null){
	out.println("<font color='red'>" + message + "</font>");
}
%>

  <div class="container-fluid">
        <div class="row">
            <div class="col">
<a href="adminlogin.jsp">AdminLogin</a> <br/><br>
	<a href="userregister.jsp">UserRegister</a> <br/></br>
	<a href="userlogin.jsp">UserLogin</a> <br/>
</div>
</div>
</div>
   
	

</body>
</html>
