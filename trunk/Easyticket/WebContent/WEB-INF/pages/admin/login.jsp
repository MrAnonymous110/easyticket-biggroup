<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>SimpleAdmin</title>
<link rel="stylesheet" type="text/css" href="<s:url value="/css/login.css" />" media="screen" />
</head>
<body>
<div class="wrap">
	<div id="content">
		<div id="main">
			<div class="full_w">
				<form action="login" method="post">
					<label for="login">Username:</label>
					<input id="login" name="username" class="text" />
					<label for="pass">Password:</label>
					<input id="pass" name="password" type="password" class="text" />
					<div class="sep"></div>
					<button type="submit" class="ok">Login</button> <a class="button" href="">Forgotten password?</a>
				</form>
			</div>
			<div class="footer">&raquo; <a href="index.jsp">Go to home page</a> | Admin Panel</div>
		</div>
	</div>
</div>

</body>