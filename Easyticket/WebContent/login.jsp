<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/common/header.jsp"%>
<%@include file="/common/taglibs.jsp"%>

<!--content-->
<div class="container">
	<div class="row">
		<div class="border span12 shadow user-content">
			<div class="user-heading">
				<h2>Account</h2>
				<ul>
					<li class="active"><a href="#login" data-toggle="tab">Login</a></li>
					<li><a href="#register" data-toggle="tab">Register account</a></li>

					<!--<li><a href="#favorite" data-toggle="tab">Sản phẩm yêu thích</a></li>-->
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane active" id="login">
					<h3 class="user-info-heading">Login</h3>
					<s:if test="error != ''">
						<div class="error_show">
							<s:property value='error' />
						</div>
					</s:if>

					<form class="form-horizontal" method="post" action="login">

						<div class="control-group">
							<label class="control-label">User Name</label>
							<div class="controls">
								<input type="text" placeholder="UserName" class="span4"
									name="username">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Password</label>
							<div class="controls">
								<input type="password" placeholder="Password" class="span4"
									name="password">
							</div>
						</div>

						<div class="control-group">
							<div class="controls">
								<label class="checkbox"> <input type="checkbox"
									name="isRemember" value="true"> Remember me?
								</label>
								<button type="submit" class="btn" name="btnLogin">Login</button>
							</div>
						</div>
					</form>
				</div>
				<div class="tab-pane" id="register">
					<h3 class="user-info-heading">Register Information</h3>
					<s:if test="error != ''">
						<div class="error_show">
							<s:property value="error" />
						</div>
					</s:if>

					<s:if test="success != ''">
						<div class="success_show">
							<s:property value="success" />
						</div>
					</s:if>
					<form class="form-horizontal" method="post" action="register">

						<div class="control-group">
							<label class="control-label">User Name</label>
							<div class="controls">
								<input type="text" placeholder="User Name" class="span4"
									name="username">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text" placeholder="Email" class="span4"
									name="email">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Password</label>
							<div class="controls">
								<input type="password" placeholder="Password" class="span4"
									name="password">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Confirm Password</label>
							<div class="controls">
								<input type="password" placeholder="confirm Password"
									class="span4" name="confirmPassword">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Full Name</label>
							<div class="controls">
								<input type="text" placeholder="Full Name" class="span4"
									name="fullName">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Birthday</label>
							<div class="controls">
								<input type="text" placeholder="dd/MM/yyyy" class="span4"
									name="birthday">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Phone</label>
							<div class="controls">
								<input type="text" placeholder="Phone Number" class="span4"
									name="phone" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Address</label>
							<div class="controls">
								<textarea cols="3" name="address" class="span6"></textarea>
							</div>
						</div>

						<div class="control-group">
							<div class="controls">
								<button type="submit" class="btn">Register</button>
							</div>
						</div>
					</form>

				</div>

				<!---->


			</div>
		</div>
	</div>
</div>
<!--end content-->

<%@include file="/common/footer.jsp"%>
