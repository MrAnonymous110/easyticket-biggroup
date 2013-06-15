<%@ include file="template.jsp" %>
<%@include file="/common/taglibs.jsp" %>

<section id="main" class="column">
     
     <article class="module width_full">
		<header><h3>List Booking</h3></header>
		<div class="tab_container">
			<div id="tab1" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr> 
   					<th>ID</th> 
   					<th>User Name</th>
   					<th>Event</th> 
   					<th>Seat</th> 
   					<th>Count</th>
   					<th>Price</th>  
   					<th>Payment</th>
   					<th>Action</th>  
				</tr> 
			</thead> 
			<tbody> 
			    <s:iterator value="bookings">
			      <tr> 
   					<td><s:property value="id"/></td> 
    				<td><s:property value="users.userName"/></td> 
    				<td><s:property value="seat.event.title"/></td>
    				<td><s:property value="seat.seat"/></td>
    				<td><s:property value="count"/></td>
    				<td><s:property value="price"/></td>
    				<td><s:property value="payment.name"/></td>
    				<td>
    				   <a href="deleteBooking?bookingId=<s:property value="id"/>"> <input type="image" src="<s:url value="/images/icn_trash.png" /> " title="Trash"></a> 
    				</td> 
				</tr> 
			    </s:iterator>		
			</tbody> 
			</table>
			<footer>
			</footer>
			</div>
	   </div>
     </article>
     
   </section>
   