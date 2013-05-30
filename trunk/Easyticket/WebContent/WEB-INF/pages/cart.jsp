<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp" %>

<div class="container">
<div class="row">
<div class="span12">
<div class="box-cart">
<h3>giỏ hàng</h3>
<table width="100%" border="1">
  <tr>
    <th scope="col">STT</th>
    <th scope="col">Tên sản phẩm</th>
    <th scope="col">Giá</th>
    <th scope="col">Số lượng</th>
    <th scope="col">Tổng cộng</th>
  </tr>
  <tr>
    <td>1</td>
    <td>
    <div class="media">
  <a class="pull-left" href="#">
    <img src="images/adv1.png" width="150">
  </a>
  <div class="media-body">
    <p>Media heading</p>
   <span class="xclose"><a href="#">Xóa sản phẩm</a></span>
  </div>
</div>
    
    </td>
    <td>
    <p class="delete">10.000.000 vnđ</p>
<p class="ff0000">8.152.000 vnđ</p> </td>
    <td>
    <form>
    <input type="text" class="input-mini" value="01" />
    </form>
    <p class="xacnhan"><a href="#">Cập nhật</a></p>
    </td>
    <td><p class="ff0000">8.152.000 vnđ</p></td>
  </tr>
  <tr>
    <td class="f8f8f8" colspan="4"><strong>Tổng số tiền thanh toán</strong></td>
    <td class="f8f8f8"><p class="ff0000">8.152.000 vnđ</p></td>
  </tr>
    <tr>
    <td colspan="5">
    <form class="form-coupon">
    <small>Nhập <strong>Coupon</strong> giảm giá</small><br />
  <input type="text" class="input-xlarge" placeholder="Nhập mã Coupon">
  <input type="button" value="Xác nhận">
</form>
    <span class="thanhtoan"><a href="#">Thanh toán</a></span>
    </td>
  </tr>
</table>
<div class="muahang"><a href="#" class="btn btn-large">Tiếp tục mua hàng</a></div>
</div>
</div>
</div>
</div>
<!--end content--> 


<%@include file="/common/footer.jsp" %>



