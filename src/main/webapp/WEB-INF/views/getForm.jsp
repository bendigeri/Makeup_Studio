<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link href="<c:url value='/static/css/form/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/form/form.css' />" rel="stylesheet"></link>
<script src="<c:url value="/static/js/form/form.js" />"></script>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>

<body>
	<div class="main_content">
		<!-- 
----------------------------------------------------------------------------------------
Header div.
----------------------------------------------------------------------------------------
-->
		<div class="first">
			<p>
				<a href="http://www.formget.com/app/"><img src="logo.png"
					id="logo" /></a> Online form builder.
			</p>
		</div>

		<!--
--------------------------------------------------------------------------------------
This div is for the buttons. When user click on buttons, respective field will appear.
---------------------------------------------------------------------------------------
-->

		<div class="two">
			<h4>Frequently Used Form Fields</h4>
			<button onclick="nameFunction()">Name</button>
			<br />
			<button onclick="emailFunction()">Email</button>
			<br />
			<button onclick="contactFunction()">Contact</button>
			<br />
			<button onclick="textareaFunction()">Message</button>
			<button onclick="resetElements()">Reset</button>
		</div>
		<!-- 
----------------------------------------------------------------------------------------
This div is meant to display final form.
----------------------------------------------------------------------------------------
-->

		<div class="three">
			<h2>Your Dynamic Form!</h2>
			<form action="/submitForm" method="get" id="mainform">
			
				<span id="myForm"> </span>
				<p></p>
				<input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
			</form>
		</div>
		<!-- 
----------------------------------------------------------------------------------------
Footer div.
----------------------------------------------------------------------------------------
-->
		<div class="four">
			<p>
				2014 <a href="http://www.formget.com/app/"><img src="logo.png" /></a>
				All rights reserved.
			</p>
		</div>
	</div>

</body>
</html>