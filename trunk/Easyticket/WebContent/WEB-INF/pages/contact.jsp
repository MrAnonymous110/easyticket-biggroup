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
	    <h3>Công Ty Cổ Phần Đầu Tư Devico</h3>
	 <p>Office: 408 Xã Đàn - Đống Đa - Hà Nội.<br />
	Website:  http://dem.vn - Fax: 0437549976 - Email: dem@devico.vn<br />
	Tài Khoản: 0200160666888 - Ngân hàng TMCP Quân Đội.<br />
	<strong>Bộ phận bán buôn/ Dự án:</strong><br />
	DT: 0904 739 951/ 0934 54 5555.<br />
	<strong>Bộ phận bán lẻ/ Chăm sóc khách hàng:</strong><br />
	Hotline: 1800 555 516</p>
	
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

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> 


<%@include file="/common/footer.jsp" %>