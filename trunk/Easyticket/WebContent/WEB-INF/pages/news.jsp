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
				<s:iterator value="news">
					<div class="media">
						<div class="media-body">
							<h4 class="media-heading">
								<s:property value="title" />
							</h4>
							<p>
								<s:property value="subContent" />
							</p>
							<a href="news/<s:property value='id' />" class="btn">View
								Detail</a>
						</div>
					</div>
				</s:iterator>

			</div>
			<div class="page">
				<ul>
					<li><a href="news.html?p=<s:property value='prevPage' />">Prev</a></li>
					<s:set id="pcount" value="pcount" />
					<s:iterator begin="1" end="#pcount" var="i">
						<s:if test="p == #i">
							<li><a href="news.html?p=<s:property value='#i' />"
								style="background: #F47955; color: white;"><s:property
										value='#i' /></a></li>
						</s:if>
						<s:else>
							<li><a href="news.html?p=<s:property value='#i' />"><s:property
										value='#i' /></a></li>
						</s:else>
					</s:iterator>
					<li><a href="news.html?p=<s:property value='nextPage' />">Next</a></li>
				</ul>
			</div>
		</div>
		<div class="span3">
			<div class="colleft-box newscol">
				<h3>Category</h3>
				<ul class="news-list">
				    <s:iterator value="categories">
					    <li><a href="${ctx}/news/<s:property value="id" />"><s:property value="name" /></a></li>
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