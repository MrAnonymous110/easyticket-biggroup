<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h1>Hello, <s:property value="username"/> </h1>
     <h3>List role</h3>
     Count: <s:property value="count" />
     <s:iterator value="roles">
         <s:property value="name"/> 
         <s:url var="url" action="deleteRole">
             <s:param name="id" value="%{id}"></s:param>
         </s:url>
         <s:a href="%{url}" >Delete </s:a> <br/>
      </s:iterator>
</body>
</html>