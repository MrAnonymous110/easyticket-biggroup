<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>easyTicket</title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="css/style.css" rel="stylesheet" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/mosaic.1.0.1.min.js"></script>
<script type="text/javascript">
$(function() {
$('.dropdown-menu input').click(function(e) {
e.stopPropagation();
});
$('#main_slide').carousel({
interval: 2000
})
$('#productslide').carousel({
interval: 15000
})
});			
jQuery(function($){				
$('.bar').mosaic({
animation:'slide'
});
});
</script>
</head>

<body>
<!--header-->
<div id="header"> 
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
          <div class="menu_lefttop">
            <h3>danh mục sản phẩm</h3>
            <ul>
              <li><a href="#">đệm lò xo</a> <span><a href="#">Everon</a>, <a href="#">Canada</a>, <a href="#">Kingkoil</a>, <a href="#">Everon</a>, <a href="#">Canada</a>, <a href="#">Kingkoil</a></span> </li>
              <li><a href="#">đệm bông ép</a></li>
              <li><a href="#">đệm cao su</a><span><a href="#">Everon</a>, <a href="#">Canada</a>, <a href="#">Kingkoil</a>, <a href="#">Everon</a></span></li>
              <li><a href="#">chăn ga gối</a><span><a href="#">Havinco</a>, <a href="#">Kymdan</a>, <a href="#">Kingkoil</a>, <a href="#">Everon</a> <a href="#">Canada</a>, <a href="#">Kingkoil</a></span></li>
              <li><a href="#">đệm xơ dừa</a><span><a href="#">Canada</a></span></li>
            </ul>
          </div>
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
          <div class="row">
            <div class="span6">
              <div id="main_slide" class="carousel slide">
                <div class="carousel-inner">
                  <div class="active item"><img src="images/banner.png" height="310" alt="" /></div>
                  <div class="item"><img src="images/banner.png" height="310" alt="" /></div>
                  <div class="item"><img src="images/banner.png" height="310" alt="" /></div>
                </div>
                <!-- Carousel items -->
                <ol class="carousel-indicators">
                  <li data-target="#main_slide" data-slide-to="0" class="active"></li>
                  <li data-target="#main_slide" data-slide-to="1"></li>
                  <li data-target="#main_slide" data-slide-to="2"></li>
                </ol>
              </div>
            </div>
            <div class="span3"> <img class="adv" src="images/adv1.png" alt="" /> <img class="adv" src="images/adv2.png" alt="" /> </div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
</div>
<div class="clearfix"></div>
<!--end header--> 
<!--content-->
<div class="container"> 
  <!--ads-->
  <div class="row">
    <div class="span4 ads"><img src="images/ads1.png" alt="" /></div>
    <div class="span4 ads"><img src="images/ads2.png" alt="" /></div>
    <div class="span4 ads"><img src="images/ads3.png" alt="" /></div>
    <div class="clearfix"></div>
  </div>
  <!--end ads-->
  <div class="row">
    <div class="span12">
      <div id="productslide" class="carousel slide">
        <h2 class="tittle-product">sản phẩm nổi bật</h2>
        <ol class="carousel-indicators">
          <li data-target="#productslide" data-slide-to="0" class="active"></li>
          <li data-target="#productslide" data-slide-to="1"></li>
          <li data-target="#productslide" data-slide-to="2"></li>
        </ol>
        <!-- Carousel items -->
        <div class="carousel-inner">
          <div class="active item"> 
            <!--product-->
            <div class="row">
              <div class="span6"> 
                <!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> 
              </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="clearfix"></div>
            </div>
            <div class="row">
              <div class="span6"> 
                <!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> 
              </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="clearfix"></div>
            </div>
            
            <!--end product--> 
          </div>
          <div class="item"> 
            <!--product-->
            <div class="row">
              <div class="span6"> 
                <!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> 
              </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="clearfix"></div>
            </div>
            <div class="row">
              <div class="span6"> 
                <!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> 
              </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="clearfix"></div>
            </div>
            
            <!--end product--> 
          </div>
          <div class="item"> 
            <!--product-->
            <div class="row">
              <div class="span6"> 
                <!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> 
              </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="clearfix"></div>
            </div>
            <div class="row">
              <div class="span6"> 
                <!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> 
              </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="hotsale"></span> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="span3"><!--box product-->
                <div class="box-product"> <span class="sale-bar">50%</span>
                  <div class="product-block bar"> <a href="#" target="_blank" class="mosaic-overlay">
                    <div class="details">
                      <h4>Bộ chăn ga gối PYEODA 01</h4>
                      <p class="sale">3.250.000 vnđ</p>
                      <p class="price">1.625.000 VNĐ </p>
                    </div>
                    </a>
                    <div class="mosaic-backdrop"><img src="images/product1.png"/></div>
                  </div>
                </div>
                <!--end--> </div>
              <div class="clearfix"></div>
            </div>
            
            <!--end product--> 
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--product tab-->
  <div class="row">
    <div class="span12">
      <h2 class="tittle-product2">sản phẩm</h2>
      <ul class="product-tap">
        <li class="active"><a href="#producttab1" data-toggle="tab">CHĂN GA GỐI GIẢM GIÁ 50%</a></li>
        <li><a href="#producttab2" data-toggle="tab">CHĂN GA GỐI GOODNIGHT</a></li>
        <li><a href="#producttab3" data-toggle="tab">ĐỆM LÒ XO DUNLOPILLO</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="producttab1">
          <div class="row">
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="row">
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="clearfix"></div>
          </div>
          <a class="viewall" href="#">Xem tất cả</a> </div>
        <div class="tab-pane" id="producttab2">
          <div class="row">
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="row">
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="clearfix"></div>
          </div>
          <a class="viewall" href="#">Xem tất cả</a> </div>
        <div class="tab-pane" id="producttab3">
          <div class="row">
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product2.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="row">
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="span4"> 
              <!--boxproduct2-->
              <div class="box-product2">
                <div class="img-product"> <img src="images/product3.png" alt="" /> <span class="saletab">50%</span> </div>
                <div class="box-product2-content">
                  <h3>Bộ chăn ga gối PYEODA 01</h3>
                  <p class="sale">3.250.000 vnđ</p>
                  <p class="price">3.250.000 vnđ</p>
                  <a class="view">xem chi tiết</a><a class="buy">mua hàng</a> </div>
              </div>
              <!--end boxproduct2--> 
            </div>
            <div class="clearfix"></div>
          </div>
          <a class="viewall" href="#">Xem tất cả</a> </div>
      </div>
    </div>
  </div>
  <!--end product tab--> 
</div>
<!--end content--> 
<!--newsletter-->
<div class="newsletter">
  <div class="container">
    <div class="row">
      <div class="span5 offset2">
        <h3>Đăng ký nhận tin</h3>
        <small>Đăng ký e-mail nhận thông tin sản phẩm và các chương trình giảm giá</small> </div>
      <div class="span5">
        <form >
          <input type="text" class="input-xlarge" placeholder="Nhập vào địa chỉ email của bạn" />
          <input type="submit" class="reg"  value="đăng ký"/>
        </form>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>
<!--end newsletter-->
<div class="container margin">
  <div class="row">
    <div class="span8">
      <div class="content">
        <h2 class="tle">thông tin khuyến mãi</h2>
        <div class="media"> <a class="pull-left" href="#"> <img src="images/product2.png" class="img-polaroid"  width="240" alt=""/> </a>
          <div class="media-body">
            <h4 class="media-heading">RỘN RÀNG GIẢM GIÁ NHÂN DỊP KHAI TRƯƠNG CỬA HÀNG MỚI VÀ KỶ NIỆM NGÀY GIẢI PHÓNG MIỀN NAM 30/04/2013</h4>
            <p>Cơn lốc khuyễn mại -Giảm giá cực sốc - giảm đến 60% các sản phẩm chăn ga gối đệm nhân dịp kỷ niệm ngày Giải Phóng Miền Nam 30/04 & ngày Quốc Tế Lao Động 01/05/2013... <a href="#">xem chi tiết</a> </p>
          </div>
          <div class="clearfix"></div>
          <ul class="media-li">
            <li><a href="#">kênh mua sắm hàng đầu việt nam</a></li>
            <li><a href="#">Hoàn thiện cuộc sống của bạn với việc đón đầu công nghệ!</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="span4">
      <div class="box-support">
        <ul>
          <li class="no1">
            <p class="tittle">hotline</p>
            <p class="number">1800.515.555</p>
            <p class="sub-number">miễn phí cước</p>
          </li>
          <li class="no2">
            <p class="tittle">hỗ trợ trực tuyến</p>
            <p>User hỗ trợ <a href="ymsgr:sendim?user" mce_href="ymsgr:sendim?user" border="0"><img src="http://opi.yahoo.com/online?u=user&amp;t=1" mce_src="http://opi.yahoo.com/online?u=user&amp;t=1"></a></p>
            <p>User hỗ trợ <a href="ymsgr:sendim?user" mce_href="ymsgr:sendim?user" border="0"><img src="http://opi.yahoo.com/online?u=user&amp;t=1" mce_src="http://opi.yahoo.com/online?u=user&amp;t=1"></a></p>
            <p>User hỗ trợ <a href="ymsgr:sendim?user" mce_href="ymsgr:sendim?user" border="0"><img src="http://opi.yahoo.com/online?u=user&amp;t=1" mce_src="http://opi.yahoo.com/online?u=user&amp;t=1"></a></p>
            <p>User hỗ trợ <a href="ymsgr:sendim?user" mce_href="ymsgr:sendim?user" border="0"><img src="http://opi.yahoo.com/online?u=user&amp;t=1" mce_src="http://opi.yahoo.com/online?u=user&amp;t=1"></a></p>
          </li>
          <li class="no3">
            <p class="tittle">email</p>
            <a  class="ff9900" href="mailto:contact@dem.vn">contact@dem.vn</a> </li>
        </ul>
      </div>
    </div>
    <div class="clearfix"></div>
  </div>
  <!--showroom-->
  <div class="row">
    <div class="span12">
      <h2 class="tittle-product2">hệ thống showroom</h2>
      <ul class="product-tap">
        <li class="active"><a href="#showroom1" data-toggle="tab">CHĂN GA GỐI GIẢM GIÁ 50%</a></li>
        <li><a href="#showroom2" data-toggle="tab">CHĂN GA GỐI GOODNIGHT</a></li>
        <li><a href="#showroom3" data-toggle="tab">ĐỆM LÒ XO DUNLOPILLO</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="showroom1">
          <div class="row margin">
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="row margin">
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="tab-pane" id="showroom2">
          <div class="row margin">
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="row margin">
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="tab-pane" id="showroom3">
          <div class="row margin">
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="row margin">
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="span4">
              <div class="box-showroom"> <a class="pull-left" href="#"> <img src="images/product2.png" width="70" height="90" alt=""/> </a>
                <p><strong>Showroom Đống Đa</strong> Đ/C: 408 Xã Đàn - Đống Đa - Hà Nội.
                  Điện thoại: 043 577 3141</p>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--end showroom--> 
</div>
<div class="footer">
  <ul>
    <li><a href="#">Giới thiệu</a></li>
    <li><a href="#">Chính sách chất lượng</a></li>
    <li><a href="#">Hướng dẫn mua hàng</a></li>
    <li><a href="#">Điều khoản sử dụng</a></li>
    <li><a href="#">Chính sách bảo mật</a></li>
    <li><a href="#">Sitemap</a></li>
  </ul>
  Copyright © 2007 - 2013 Bản quyền thuộc về dem.vn<br />
  Đệm, đệm lò xo, đệm bông ép, đệm cao su, Chăn ga gối đệm, Chăn ga gối nệm.<br />
  Thiết kế và Quản trị bởi Dotcom - Dịch vụ SEO bởi SmartSEO.vn </div>
</body>
</html>
