<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp"%>
<%@include file="/common/taglibs.jsp"%>

<div class="container">
	<div class="row">
		<div class="border span12 shadow product-page-details">
			<div class="row">
				<div class="span4">
					<div class="product-page-details-img">
						<img src="<s:url value="%{event.imgSrc}" />" title="triumph">
					</div>

				</div>
				<div class="span7">
					<div class="product-page-details-sp">
						<h3>
							<s:property value="event.title" />
						</h3>
						<p>
							<s:property value="event.content" />
						</p>
						<p><b>Address:</b> <s:property value="event.address"/> </p>
						<p><b>Start time:</b> <s:property value="event.startTimeBuild"/> </p>
						<p><b>Stop time:</b> <s:property value="event.endTimeBuild"/> </p>
						<form action="#">
							<span>Seat</span> <select class="input-medium" name="seatList">
								<s:iterator value="seats">
									<option value="<s:property value="id" />">
										<s:property value="seat" />
									</option>
								</s:iterator>
							</select>
						</form>
						<span class="inline price">
							<p>
								<strong>Price:</strong> <span class="delete" id="price">2.950.000</span>
							</p>
							<p class="gia" id="priceDiscount">1.950.000 USD</p>
						</span><span class="buy pull-right"><a href="#">Booking</a></span>
					</div>
				</div>

				<div class="clearfix"></div>

			</div>
		</div>
	</div>
</div>

<div style="height: 50px;">
</div>

<script type="text/javascript">
   $("document").ready(function(){
	   
	   $.post("${ctx}/getPriceSeat?seatId="+$("select[name='seatList']").val(),"", function(data) {
		     $("#price").text(data.price);
	    	 $("#priceDiscount").text(data.discount);
		}, "json");
	   
   });

   $("select[name='seatList']").change(function(){
	    $.post( "${ctx}/getPriceSeat?seatId="+$(this).val(),"", function(data){
	    	 $("#price").text(data.price);
	    	 $("#priceDiscount").text(data.discount);
	    });
	   
   });
	
</script>

<%@include file="/common/footer.jsp"%>