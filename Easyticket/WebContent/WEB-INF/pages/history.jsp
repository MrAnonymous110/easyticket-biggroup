<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/common/header.jsp"%>
<%@include file="/common/taglibs.jsp"%>

<!--content-->
<div class="container">
	<div class="row">
		<div class="border span12 shadow user-content">
			<div class="user-heading">
				<h2>Your account</h2>
				<ul>
					<li class="active"><a href="#history" data-toggle="tab">Trading
							History</a></li>
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane active" id="history">
					<table class="table table-bordered user-table">
						<tr>
							<th>STT</th>
							<th>Information</th>
							<th>Number</th>
							<th>Payment</th>
							<th>Status</th>
						</tr>
						<c:set var="stt" value="1" />
						<s:iterator value="bookings">
							<tr>
								<td>${stt}</td>
								<td><div class="media-body">
										<img src="images/thumbs/triumph_thumb1.jpg" alt="" width="80"
											class="pull-left" />
										<p>
											<strong><s:property value="event.title" /></strong>
										</p>
										<p>
											Seat:
											<s:property value="seat.seat" />
										</p>
										<span class="gia">Price: <s:property value="price" />
											USD
										</span>
									</div></td>
								<td><s:property value="count" /></td>
								<td><s:property value="payment.name" /></td>
								<td><span class="thanhtoan">Submit Successful</span></td>
							</tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end content-->

<%@include file="/common/footer.jsp"%>