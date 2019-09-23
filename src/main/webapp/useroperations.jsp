<html>
<head>
<title>UserOperations</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>

</head>
<body style="text-align:center">

<jsp:include page="headers.jsp"></jsp:include>

<div id="name"></div>
<form >

<div class="container-fluid">
        <div class="row">
            <div class="col">
<a href="updatestock.jsp">Order Cans</a> <br/><br>
	<a href="reserve.jsp">Reserve Cans</a> <br/><br/>
	<a href="orderreserve.jsp">Order Reserved Cans</a> <br/><br/>
	<input type="button"  value="Logout" class="btn btn-danger" onclick= "logout()">
</div>
</div>
</div>
</form>

<script >

function displayName(){

	var user =JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
	var name= user.Name;
	document.getElementById("name").innerHTML = "Welcome....."+ name;
	return name;
}

displayName();

function logout(){
    localStorage.clear();
    window.location.href = "index.jsp";
    }
</script>
</body>
</html>