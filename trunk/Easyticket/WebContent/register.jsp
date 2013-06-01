<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/common/header.jsp" %>

<!--content-->
<div class="container">
  <div class="row">
    <div class="border span12 shadow user-content">
      <div class="user-heading">
        <h2>tài khoản</h2>
        <ul>
          <li class="active"><a href="#info" data-toggle="tab">đăng kí tài khoản</a></li>
          <li><a href="#history" data-toggle="tab">Lịch sử giao dịch</a></li>
          <!--<li><a href="#favorite" data-toggle="tab">Sản phẩm yêu thích</a></li>-->
        </ul>
      </div>
      <div class="tab-content">
        <div class="tab-pane active" id="info">
        <h3 class="user-info-heading">đăng kí tài khoản</h3>
          <form class="form-horizontal">
            <div class="control-group">
              <label class="control-label" for="inputEmail">Email</label>
              <div class="controls">
                <input type="text" id="inputEmail" placeholder="Email"  class="span4">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputPassword">Password</label>
              <div class="controls">
                <input type="password" id="inputPassword" placeholder="Password" class="span4">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputPassword">Password</label>
              <div class="controls">
                <textarea cols="3"  class="span6"></textarea>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputPassword">Password</label>
              <div class="controls">
                <select  class="span3">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <label class="checkbox">
                  <input type="checkbox">
                  Remember me </label>
                  <label class="radio">
                  <input type="radio">
                  Remember me </label>
                <button type="submit" class="btn">Sign in</button>
              </div>
            </div>
          </form>
          
        </div>
        <div class="tab-pane" id="history">
          <table class="table table-bordered user-table">
            
              <th>STT</th>
              <th>Thông tin sản phẩm</th>
              <th>Số lượng</th>
              <th>Phương thức thanh toán</th>
              <th>Trạng thái</th>
            <tr>
              <td>01</td>
              <td><div class="media-body"> <img src="images/thumbs/triumph_thumb1.jpg" alt="" width="80"  class="pull-left"/>
                  <p><strong>Đệm lò xo dunlopillo Duchess</strong></p>
                  <span class="gia">Giá: 16.238.000 vnđ</span>
                  <p>Kích thước: 1,8m x2m</p>
                </div></td>
              <td>01</td>
              <td>Ngân lượng</td>
              <td><span class="thanhtoan">Đã thanh toán</span></td>
            </tr>
            <tr>
              <td>01</td>
              <td><div class="media-body"> <img src="images/thumbs/triumph_thumb1.jpg" alt="" width="80"  class="pull-left"/>
                  <p><strong>Đệm lò xo dunlopillo Duchess</strong></p>
                  <span class="gia">Giá: 16.238.000 vnđ</span>
                  <p>Kích thước: 1,8m x2m</p>
                </div></td>
              <td>01</td>
              <td>Ngân lượng</td>
              <td><span class="cthanhtoan">Chưa thanh toán</span></td>
            </tr>
            <tr>
              <td colspan="5"><ul class="pagenav">
                  <li><a href="#">Prev</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">Next</a></li>
                </ul></td>
            </tr>
          </table>
        </div>
       </div>
    </div>
  </div>
</div>
<!--end content--> 


<%@include file="/common/footer.jsp" %>