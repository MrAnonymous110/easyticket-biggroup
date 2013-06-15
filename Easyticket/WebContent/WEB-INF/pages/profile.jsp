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
     
      </div>
    </div>
  </div>
</div>
<!--end content--> 

<%@include file="/common/footer.jsp" %>