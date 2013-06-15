<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/common/header.jsp"%>
<%@include file="/common/taglibs.jsp"%>

<!--content-->
<div class="container">
	<div class="row">
		<div class="span9 news-media">
			<div class="border shadow margin">
				<h2>News</h2>
				<div class="media">
					<div class="media-body">
						<h4 class="media-heading">
							<s:property value="new.title" />
						</h4>
						<p>
							<s:property value="new.content" />
						</p>

					</div>
				</div>
				<div class="media-others">
					<h3>News orther</h3>
					<ul class="media-li">
						<s:iterator value="news">
							<li><a href="${ctx}/new-detail/<s:property value="id" />"><s:property
										value="title" /></a></li>
						</s:iterator>
					</ul>
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