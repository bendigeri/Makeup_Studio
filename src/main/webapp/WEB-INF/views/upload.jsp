<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Spring 4 MVC File Upload Example</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet" type="text/css"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet" type="text/css"></link>
</head>
<body> 
 
    <div class="form-container">
        <h1>Spring 4 MVC File Upload Example </h1>
        <form:form method="POST" action="doUpload?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" modelAttribute="makeupblog" class="form-horizontal">
         
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="file">Upload a file</label>
                    <div class="col-md-7">
                      <input type="file" name="fileUpload" size="50" />
                       
                    </div>
                </div>
            </div>
     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <div class="row">
                <div class="form-actions floatRight">
                    <input type="submit" value="Upload" class="btn btn-primary btn-sm">
                </div>
            </div>
        </form:form>
        <a href="<c:url value='/welcome' />">Home</a>
    </div>
</body>
</html>
