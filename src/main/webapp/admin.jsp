<html>
<head>
<title>Admin</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>

</head>
<body style="text-align:center">
<jsp:include page="headers.jsp"></jsp:include>
<h2>Welcome Admin</h2><br/>
<form >

<div class="container-fluid">
        <div class="row">
            <div class="col">
<a href="updatestock.jsp">Update Stock</a> <br/><br/>
	<a href="viewusers.jsp">View Users</a> <br/><br/>
	<a href="viewstock.jsp">View Stock</a> <br/><br/>
	<input type="button"  value="Logout" class="btn btn-danger" onclick= "logout()">
	
</div>
</div>
</div>


</form>

<script>
function logout(){
    localStorage.clear();
    window.location.href = "index.jsp";
    }
</script>
</body>
</html>