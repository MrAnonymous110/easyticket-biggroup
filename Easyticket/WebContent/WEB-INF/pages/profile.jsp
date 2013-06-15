<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/common/header.jsp" %>

<!--content-->
<div class="container">
  <div class="row">
    <div class="border span12 shadow user-content">
      <div class="user-heading">
        <h2>Your account</h2>
        <ul>
          <li class="active"><a href="#info" data-toggle="tab">Information</a></li>
          <li><a href="#history" data-toggle="tab">Trading History</a></li>
          <!--<li><a href="#favorite" data-toggle="tab">Sản phẩm yêu thích</a></li>-->
        </ul>
      </div>
      <div class="tab-content">
        <div class="tab-pane active" id="info">
        <h3 class="user-info-heading">User's information</h3>
          <form class="form-horizontal" action="updateProfile">
          <div clasS="controls"><input type="hidden" name="user.id" value=""></input></div>
            <div clasS="controls"><input type="hidden" name="user.userName" value=""></input></div>
			<div clasS="controls"><input type="hidden" name="user.password" value=""></input></div>
			<div clasS="controls"><input type="hidden" name="user.birthDay" value=""></input></div>
			<div clasS="controls"><input type="hidden" name="user.createDate" value=""></input></div>
			<div clasS="controls"><input type="hidden" name="user.role" value=""></input></div>
            <div class="control-group">
              <label class="control-label" for="inputEmail">Email</label>
              <div class="controls">
                <input type="text" id="inputEmail" placeholder="Email" name="user.email" value='<s:property value="user.email" />'  class="span4">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" >FullName</label>
              <div class="controls">
                <input type="text" placeholder="Full name" name="user.fullName" value='<s:property value="user.fullName" />' class="span4">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" >Address</label>
              <div class="controls">
                <input type="text" placeholder="Address" name="user.address" value='<s:property value="user.address" />' class="span6">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" >Phone</label>
              <div class="controls">
                <input type="text" placeholder="Phone" name="user.phone"  value='<s:property value="user.phone" />'class="span6">
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <button type="submit" class="btn">Update</button>
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
        <!--<div class="tab-pane" id="favorite"><table class="table table-bordered user-table">
<th>STT</th>
<th>Thông tin sản phẩm</th>
<th>Giới thiệu</th>
<th>Trạng thái</th>
  <tr>
<td>01</td>
<td>
  <div class="media-body"> 
  
  <img src="images/thumbs/triumph_thumb1.jpg" alt="" width="80"  class="pull-left"/>
  <p><strong>Đệm lò xo dunlopillo Duchess</strong></p>
<span class="gia">Giá: 16.238.000 vnđ</span>
<p>Kích thước: 1,8m x2m</p></div>
  <div class="clearfix"></div>
</td>
<td><div class="media-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi lacinia sagittis quam eu dignissim. Sed non orci et felis gravida lacinia. Aenean varius eros a quam dictum ullamcorper. Vivamus ultrices elementum cursus. Vestibulum bibendum cursus lacus, ac pellentesque felis viverra ac. Quisque adipiscing neque semper felis scelerisque dapibus tristique nisl vulputate. Vivamus eu lacus sem, ac vestibulum dui</div></td>
<td width="120"><a href="#" class="btn btn-small btn-block btn-info">Mua sản phẩm</a>

<a href="#" class="btn btn-small btn-block btn-danger">Xóa sản phẩm</a></td>
</tr>
<tr>
<td colspan="5">
<ul class="pagenav">
  <li><a href="#">Prev</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">Next</a></li>
</ul></td>
</tr>
</table></div>--> 
      </div>
    </div>
  </div>
</div>
<!--end content--> 

<%@include file="/common/footer.jsp" %>