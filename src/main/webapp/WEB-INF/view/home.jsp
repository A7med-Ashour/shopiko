<!-- Includes -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ include file="/WEB-INF/includes/header.jsp" %>

<!-- Private Style Sheets -->
<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">

<!-- ##############################  -->
<title>Home</title>
</head>

<body>
<div class="full_container">
	<form:form id="Form_Login" action="authenticate" modelAttribute="user" cssClass="login">
		<h4 class="text-center">Login</h4>
		<form:input path="email"  placeHolder="email"  cssClass="form-control"/>
		<form:password path="password" placeHolder="password"  cssClass="form-control"/>
		<input type="submit" value="login" class="btn btn-primary btn-block"/>
		<p class="text-center">${errorMSG}</p>
	</form:form>
	
	
	
</div>

	
<!-- Includes -->
<script src="<c:url value="/resources/js/home.js" />"></script>
<%@ include file="/WEB-INF/includes/footer.jsp" %>