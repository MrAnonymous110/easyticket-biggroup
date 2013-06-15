<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/taglibs.jsp"%>
<!--content-->
<div class="container">
	<div class="row">
		<div class="span12">
			<div class="box-cart">
				<h3>Your Cart</h3>
				<table width="100%" border="1">
					<tr>
						<th scope="col">STT</th>
						<th scope="col">Event</th>
						<th scope="col">Seat</th>
						<th scope="col">Price</th>
						<th scope="col">Numbers</th>
						<th scope="col">Total money</th>
					</tr>
					<c:if test="${sessionScope.cart != null }">
						<c:set var="stt" value="1" />
						<s:iterator value="carts">

							<tr>
								<td>${stt}</td>
								<td>
									<div class="media">
										<a class="pull-left" href="#"> <img src="images/adv1.png"
											width="150">
										</a>
										<div class="media-body">
											<p>
												<s:property value="event.title" />
											</p>
											<span class="xclose"><a href="deleteCart?stt=${stt}">Delete</a></span>
										</div>
									</div>
								</td>
								<td><s:property value="seat.seat" /></td>
								<td>
									<p class="delete">
										<s:property value="price" />
										USD
									</p>
									<p class="ff0000">
										<s:property value="priceDiscount" />
										USD
									</p>
								</td>

								<td>
									<form action="updateCart">
										<input type="hidden" value="${stt}" name="stt" /> <input
											type="text" class="input-mini"
											value="<s:property value="number" />" name="number" />

										<p>
											<input type="submit" value="Update" />
										</p>
									</form>
								</td>
								<td><p class="ff0000">
										<s:property value="money" />
									</p></td>
							</tr>

							<c:set var="stt" value="${stt+1}" />
						</s:iterator>


						<tr>
							<td class="f8f8f8" colspan="5"><strong>Total Price</strong></td>
							<td class="f8f8f8"><p class="ff0000">
									<s:property value="totalMoney" />
								</p></td>
						</tr>
						<tr>
							<form action="pay" method="post">
								<td colspan="5">
									<div class="control-group">
										<label class="control-label" for="inputPassword">Select
											pay method</label>
										<div class="controls">
											<select name="payId" class="span3" id="selectPay">
												<s:iterator value="pays">
													<option value="<s:property value='id' />">
														<s:property value='name' />
													</option>
												</s:iterator>
											</select>
										</div>
									</div>
								</td>
								<td><input type="submit" value="Pay" class="thanhtoan" /></td>
							</form>
						</tr>

					</c:if>
					<c:if test="${sessionScope.cart == null }">
						<tr>
							<td colspan="6">No has event in you cart</td>
						</tr>
					</c:if>
				</table>
				<div class="muahang">
					<a href="${ctx}/event.html" class="btn btn-large">Continue Shop</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end content-->

<%@include file="/common/footer.jsp"%>


