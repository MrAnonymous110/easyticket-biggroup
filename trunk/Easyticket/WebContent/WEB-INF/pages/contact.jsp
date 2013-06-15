<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/common/header.jsp" %>
<%@include file="/common/taglibs.jsp" %>
<!--content-->
<div class="container">
  <div class="row">
    <div class="border span12 shadow user-content">
      <div class="user-heading">
        <h2>Contact</h2>
      </div>
     <div class="contact">
     <div class="row">
     <div class="span7">
		<h3>Contact with EasyTicket</h3>
<form action="sendMessage" method="post">
<div clasS="controls"><input type="hidden" name="contact.user" value=""></input></div>
<div clasS="controls"><input type="hidden" name="contact.sendTime" value=""></input></div>
<div class="controls"><input type="text" class="span6" placeholder="Title" name="contact.title" value='<s:property value="contact.title" />'/></div>
<div class="controls">
<textarea rows="6" class="span6" placeholder="Content" name="contact.content"  value='<s:property value="contact.content" />'></textarea>
</div>
<div class="controls controls-row">
  <input class="span2 btn btn-primary" type="submit" value="Send">
  <input class="span2 btn" type="button" value="Cancel" onclick="javascript:history.back(1)">
</div>
<b style="color: red;"><s:property value="message"/></b>
</form>
     
     </div>
     <div id="google-map-location"></div>
     <div class="clearfix"></div>
     </div>
     </div>
    </div>
  </div>
</div>
<!--end content-->  


<%@include file="/common/footer.jsp" %>