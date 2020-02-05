<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 class="text-center">Dumy</h1>
	<p>ID : ${user.id}</p>
	<p>Email : ${user.email}</p>
	<p>Password : ${user.password}</p>
	<p>FirstName : ${user.firstName}</p>
	<p>LastName : ${user.lastName}</p>
	<p>Role Id : ${user.role.id}</p>
	<p>Role title : ${user.role.title}</p>
	<p>Role Desc : ${user.role.description}</p>

</body>
</html>