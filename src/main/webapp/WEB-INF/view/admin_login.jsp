<!-- Includes -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ include file="/WEB-INF/includes/header.jsp" %>

<!-- Private Style Sheets -->
<link href="<c:url value="/resources/css/admin_login.css" />" rel="stylesheet">

<!-- ##############################  -->
<title>Admin Login</title>
</head>

<body>
<div class="full_container">
	<form:form id="Form_Login" action="authenticate" modelAttribute="user" cssClass="login">
		<h4 class="text-center">Admin Login</h4>
		<form:input path="email"  placeHolder="email"  cssClass="form-control"/>
		<form:password path="password" placeHolder="password"  cssClass="form-control"/>
		<input type="submit" value="login" class="btn btn-primary btn-block"/>
		<p class="text-center">${errorMSG}</p>
	</form:form>
	
	
	
</div>

	
<!-- Includes -->
<%@ include file="/WEB-INF/includes/footer.jsp" %>