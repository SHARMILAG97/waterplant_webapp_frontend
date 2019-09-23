<html>
<head>
<title>Water Plant</title>
<!-- To include external JS  files -->
<script src="js/app.js"></script>


<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>


</head>
<body style="text-align:center">s
<jsp:include page="headers.jsp"></jsp:include>
<form>
<label><h4>Enter No of Cans to Update</h4></label>
<br/>
<label>Update Cans:</label>
<input type="number" name="updatecans" id="updatecans" placeholder="Enter Cans" required autofocus/>
<br/>
<input type="submit" value="Submit" class="btn btn-success">
<button type="reset" class="btn btn-danger" value="clear">clear</button>
</form>