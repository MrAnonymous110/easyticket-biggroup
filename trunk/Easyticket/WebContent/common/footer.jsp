<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="footer">
  <ul>
    <li><a href="index.html">Home</a></li>
	<li><a href="about.html">about</a></li>
    <s:iterator value="types">
         <li><a href="event/<s:property value='id' /> " ><s:property value="name" /></a></li>
    </s:iterator>
	<li><a href="contact.html">Contact</a></li>
	<li><a href="news.html">News</a></li>
	<li><a href="login.html">Login</a></li>
  </ul>
  Copyright © Easyticket 2007 - 2013  <br /></div>