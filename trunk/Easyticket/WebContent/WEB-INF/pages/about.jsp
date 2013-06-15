<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/taglibs.jsp"%>

<!--content-->
<div class="container">
	<div class="row">
		<div class="span9 news-media">
			<div class="border shadow margin">
				<h2>Thanks you for visiting our website</h2>
				<div class="media">
					<h4 class="media-heading">About the website development team</h4>
					<p>We are the students of Aprotrain-Aptech</p>
					<p>Our team consists of 4 members:</p>
					<p>1. Ta Van Tuyen</p>
					<p>2. Tran The Quang</p>
					<p>3. Ngo Tuan Hung</p>
					<p>4. Pham Xuan Hieu</p>
				</div>

			</div>

		</div>
		<div class="span3">
			<div class="colleft-box newscol">
				<h3>Category</h3>
				<ul class="news-list">
					<s:iterator value="categories">
						<li><a href="${ctx}/news/<s:property value="id" />"><s:property
									value="name" /></a></li>
					</s:iterator>
				</ul>
			</div>
			<div class="adv-right">
				<img src="images/adv1.png" alt="" />
			</div>
			<div class="adv-right">
				<img src="images/adv2.png" alt="" />
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--end content-->

<%@include file="/common/footer.jsp"%>