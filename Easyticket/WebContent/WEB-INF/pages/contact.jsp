<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/common/header.jsp" %>

<!--content-->
<div class="container">
  <div class="row">
    <div class="border span12 shadow user-content">
      <div class="user-heading">
        <h2>liên hệ</h2>
      </div>
     <div class="contact">
     <div class="row">
     <div class="span7">
		<h3>Liên hệ với EasyTicket</h3>
<form>
<div class="controls controls-row">
  <input class="span3" type="text" placeholder="Họ và tên">
  <input class="span3" type="email" placeholder="Email">
</div>
<div class="controls"><input type="text" class="span6" placeholder="Tiêu đề" /></div>
<div class="controls">
<textarea rows="6" class="span6" placeholder="Nội dung"></textarea>
</div>
<div class="controls controls-row">
  <input class="span2 btn btn-primary" type="button" value="Gửi">
  <input class="span2 btn" type="button" value="Hủy">
</div>
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