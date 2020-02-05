<!-- Includes -->
<%@ include file="/WEB-INF/includes/header.jsp" %>

<!-- Private Style Sheets -->
<link href="<c:url value="/resources/css/admin_login.css" />" rel="stylesheet">

<!-- ##############################  -->
<title>Dashboard</title>
</head>

<body>

<!-- NavBar -->
<%@ include file="/WEB-INF/includes/navbar.jsp" %>
<div class="full_container">
	<h1 class="text-center">DashBoard</h1>
	<p>ID : ${user.id}</p>
	<p>Email : ${user.email}</p>
	<p>Password : ${user.password}</p>
	<p>FirstName : ${user.firstName}</p>
	<p>LastName : ${user.lastName}</p>
	<p>Role Id : ${user.role.id}</p>
	<p>Role title : ${user.role.title}</p>
	<p>Role Desc : ${user.role.description}</p>
	
	<a href="dumy">dumy</a>
	
	
	
</div>

	
<!-- Includes -->
<%@ include file="/WEB-INF/includes/footer.jsp" %>