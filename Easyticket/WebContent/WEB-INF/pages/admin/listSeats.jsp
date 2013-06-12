<%@ include file="template.jsp" %>
<%@include file="/common/taglibs.jsp" %>

<section id="main" class="column">
     
     <article class="module width_full">
		<header><h3>Seats Manager</h3></header>
		<div class="tab_container">
			<div id="tab1" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr> 
   					<th>ID</th> 
   					<th>Amount Ticket</th> 
   					<th>Description</th> 
   					<th>Price</th> 
   					<th>Seat</th> 
   					<th>Event</th> 
   					<th>Discount</th> 
				</tr> 
			</thead> 
			<tbody> 
			    <s:iterator value="seats">
			      <tr> 
   					<td><input type="checkbox" name="seatID"></td> 
    				<td><s:property value="amountTicket"/></td> 
    				<td><s:property value="description"/></td>
    				<td><s:property value="price"/></td>
    				<td><s:property value="seat"/></td>
    				<td><s:property value="event"/></td>
    				<td><s:property value="event.title"/></td>
    				<td><s:property value="discount"/></td>
    				<td>
    				   <a href="#"><input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit"></a>
    				   <a href="#"> <input type="image" src="<s:url value="/images/icn_trash.png" /> " title="Trash"></a> 
    				</td> 
				</tr> 
			    </s:iterator>		
			</tbody> 
			</table>
			<footer>
				<div class="submit_link">
					<input type="submit" value="Delele Selected">
				</div>
			</footer>
			</div>
	   </div>
     </article>
</section>