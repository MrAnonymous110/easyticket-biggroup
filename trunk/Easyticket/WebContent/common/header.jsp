<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>easyTicket</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<link href="css/style.css" rel="stylesheet" media="screen" />
	<link rel="stylesheet" href="css/jquery.jqzoom.css" type="text/css" />
	<link rel="stylesheet" href="css/jquery.countdown.css" type="text/css" />
	
	
  
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/mosaic.1.0.1.min.js"></script>
	<script src="js/jquery.nouislider.js"></script>
	<script src="js/jquery.jqzoom-core.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/jquery.countdown-vi.js"></script>
	<script type="text/javascript" src="js/googlemap.js"></script>
	
	<script type="text/javascript">
	$(function() {
	$('.dropdown-menu input').click(function(e) {
	e.stopPropagation();
	});
		function DropDown(el) {
					this.dd = el;
					this.initEvents();
				}
				DropDown.prototype = {
					initEvents : function() {
						var obj = this;
	
						obj.dd.on('click', function(event){
							$(this).toggleClass('active');
							event.stopPropagation();
						});	
					}
				}
	
				$(function() {
	
					var dd = new DropDown( $('#dd') );
	
					$(document).click(function() {
						// all dropdowns
						$('.menu-drop').removeClass('active');
					});
	
				});
				$(".noUiSlider").noUiSlider({
	    range: [0, 100]
	   ,start: [20, 50]
	   ,handles: 2
	   ,serialization: {
	      to: [$("#exTO"),$("#exFR")]
		  ,resolution : 1
	   }
	});
	});
	$(document).ready(function() {
		  $('.jqzoom').jqzoom({
		          zoomType: 'standard',
		          lens:true,
		          preloadImages: true,
		          alwaysOn:false,
		           zoomWidth: 400,
		          //zoomWindow  default width
		          zoomHeight: 400
		          //zoomWindow  default height
		      });
		  
		});
	$(function () {
		  var austDay = new Date();
		  austDay = new Date(austDay.getFullYear(), 5 - 1, 25, 17, 30, 0, 0 );
		  $('#defaultCountdown').countdown({until: austDay});
		  $('#year').text(austDay.getFullYear());
		});	
	</script>  
  
</head>

<body>
<!--header-->
<div id="header2"> 
  <!--/top header-->
  <div class="top-header">
    <div class="container">
      <div class="row">
        <div class="span12"> 
          <!--/menu top-->
          <ul class="menu-top">
            <li><a href="#">trang chủ</a></li>
            <li><a href="#">giới thiệu</a></li>
            <li><a href="#">sản phẩm</a></li>
            <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">gian hàng online</a>
              <div class="dropdown-menu">
                <div class="polygon">
                  <div class="dropdown-menu-content">
                    <h3>sản phẩm theo loại</h3>
                    <ul id="one">
                      <li><a href="#">Đệm Lò xo</a></li>
                      <li><a href="#">Đệm Bông ép</a></li>
                      <li><a href="#">Đệm Cao Su</a></li>
                      <li><a href="#">Chăn - Ga - Gối</a></li>
                      <li><a href="#">Đệm Xơ mướp</a></li>
                    </ul>
                    <hr />
                    <a class="readmore" href="#">xem tất cả</a> </div>
                  <div class="dropdown-menu-content">
                    <h3>sản phẩm theo hãng</h3>
                    <ul id="double">
                      <li><a href="#">Đệm Lò xo</a></li>
                      <li><a href="#">Đệm Bông ép</a></li>
                      <li><a href="#">Đệm Cao Su</a></li>
                      <li><a href="#">Chăn - Ga - Gối</a></li>
                      <li><a href="#">Đệm Xơ mướp</a></li>
                      <li><a href="#">Đệm Lò xo</a></li>
                      <li><a href="#">Đệm Bông ép</a></li>
                      <li><a href="#">Đệm Cao Su</a></li>
                      <li><a href="#">Chăn - Ga - Gối</a></li>
                      <li><a href="#">Đệm Xơ mướp</a></li>
                      <li><a href="#">Đệm Lò xo</a></li>
                      <li><a href="#">Đệm Bông ép</a></li>
                      <li><a href="#">Đệm Cao Su</a></li>
                      <li><a href="#">Chăn - Ga - Gối</a></li>
                      <li><a href="#">Đệm Xơ mướp</a></li>
                    </ul>
                    <hr />
                    <a  class="readmore" href="#">xem tất cả</a> </div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </li>
            <li><a href="#">tin tức</a></li>
            <li><a href="#">tư vấn</a></li>
            <li><a href="#">liên hệ</a></li>
          </ul>
          <span class="login"><a href="#"  class="dropdown-toggle" data-toggle="dropdown">đăng nhập</a>
          <div class="dropdown-menu">
            <div class="login-content">
              <h3>đăng nhập</h3>
              <form action="">
                <input type="text" id="inputText" placeholder="Nhập vào tài khoản" />
                <input type="password" id="inputPassword" placeholder="Password" />
                <input type="submit" class="btn btn-primary" value="Đăng nhập" />
                <p><a href="#">Quên mật khẩu?</a></p>
                <p>Chưa có tài khoản. <a href="#">Đăng ký</a></p>
              </form>
            </div>
          </div>
          </span> 
          <!--/end menu top--> 
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="row">
        <div class="span4">
          <h1><a class="logo" href="#">dem.vn</a></h1>
        </div>
        <div class="span8">
          <div class="info-top"> <span class="hotline"> hotline: <span class="ffcc00">1800 555 555</span></span> <span class="truck"> giao hàng toàn quốc</span> <span class="help"> hỗ trợ 24/7</span> </div>
        </div>
      </div>
    </div>
  </div>
  <!--/end top header-->
  <div class="content-header">
    <div class="container">
      <div class="row">
        <div class="span3">
            <div id="dd" class="menu-drop" tabindex="1">danh mục sản phẩm
            <ul class="dropdown">
              <li><a href="#">đệm lò xo</a> <span><a href="#">Everon</a>, <a href="#">Canada</a>, <a href="#">Kingkoil</a>, <a href="#">Everon</a>, <a href="#">Canada</a>, <a href="#">Kingkoil</a></span> </li>
              <li><a href="#">đệm bông ép</a></li>
              <li><a href="#">đệm cao su</a><span><a href="#">Everon</a>, <a href="#">Canada</a>, <a href="#">Kingkoil</a>, <a href="#">Everon</a></span></li>
              <li><a href="#">chăn ga gối</a><span><a href="#">Havinco</a>, <a href="#">Kymdan</a>, <a href="#">Kingkoil</a>, <a href="#">Everon</a> <a href="#">Canada</a>, <a href="#">Kingkoil</a></span></li>
              <li><a href="#">đệm xơ dừa</a><span><a href="#">Canada</a></span></li>
            </ul></div>
        </div>
        <div class="span9">
          <div class="row"> 
            <!--/search-->
            <div class="span7">
              <form action="" class="form-inline">
                <input class="inputsearch"  type="text" placeholder="Tìm kiếm sản phẩm" />
                <input class="btn bt-search" type="button" value="tìm kiếm" />
              </form>
            </div>
            <!--/end search-->
            <div class="span2"><span class="giohang"><a href="#">giỏ hàng</a><i>02</i></span></div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="row">
      <div class="span12">
      <ul class="breadcrumb">
      <li><span class="ico-home"></span></li>
  <li><a href="#">Home</a> <span class="divider"></span></li>
  <li><a href="#">Library</a> <span class="divider"></span></li>
  <li class="active">Data</li>
</ul>
      </div>
      </div>
    </div>
  </div>
</div>
<div class="clearfix"></div>


</body>
</html>