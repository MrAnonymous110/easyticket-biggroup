<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>easyTicket</title>
<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="${ctx}/css/style.css" rel="stylesheet" media="screen" />
<link href="${ctx}/css/style_cust.css" rel="stylesheet" media="screen" />
<script src="${ctx}/js/jquery.min.js" type="text/javascript"></script>
<script src="${ctx}/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/js/mosaic.1.0.1.min.js"></script>
<script src="${ctx}/js/jquery.nouislider.js"></script>
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
</script>
</head>

<body>
<!--header-->
<div id="header2" style="min-height: 168px;"> 
  <!--/top header-->
  <div class="top-header">
    <div class="container">
      <div class="row">
        <div class="span12">
			<div class="row" style="float:left;">
				<div class="span4">
				  <h1><a class="logo" href="${ctx}">EasyTicket</a></h1>
				</div>
				
			  </div>
          <!--/menu top-->
          <ul class="menu-top">
            <li><a href="${ctx}/index.html">Home</a></li>
            <li><a href="${ctx}/about.html">About</a></li>
            <li><a href="${ctx}/contact.html">Contact</a></li>
            <c:if test="${sessionScope.user == null }">
			    <li><a href="${ctx}/login.html">Login</a></li>
			</c:if>
			<c:if test="${sessionScope.user != null }">
			    <li><a href="${ctx}/profile.html">Profile</a></li>
			    <li><a href="${ctx}/logout">Logout</a></li>
			</c:if>
			
          </ul> 
          <!--/end menu top--> 
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
  <!--/end top header-->
  <div class="content-header">
    <div class="container">
      <div class="row">
        <div class="span3">
            <div id="dd" class="menu-drop" tabindex="1">Event Category
            <ul class="dropdown">
             <s:iterator value="types">
                  <li><a href="${ctx}/event/<s:property value='id' /> " ><s:property value="name" /></a></li>
             </s:iterator>
            </ul></div>
        </div>
        <div class="span9">
          <div class="row"> 
            <!--/search-->
            <div class="span7">
              <form action="event" class="form-inline">
                <input class="inputsearch"  type="text" placeholder="Search event" name="search"/>
                <input class="btn bt-search" type="submit" value="Search" />
              </form>
            </div>
            <!--/end search-->
            <div class="span2"><span class="giohang"><a href="${ctx}/cart.html">Cart</a><i>${sessionScope.count}</i></span></div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="row">
      <div class="span12">
      <ul class="breadcrumb">
      <li><span class="ico-home"></span></li>
  <li><a href="${ctx}/index.html">Home</a> <span class="divider"></span></li>
  <s:if test="actionName != null" >
      <li><a href="${ctx}/<s:property value="actionUrl" />"><s:property value="actionName" /></a> <span class="divider"></span></li>
  </s:if>
  <li class="active">Data</li>
</ul>
     
      </div>
      </div>
    </div>
  </div>
</div>
<div class="clearfix"></div>
<!--end header--> 
</body>
</html>