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
   					<th>Event</th> 
   					<th>Seat</th> 
   					<th>Price</th> 
   					<th>AmountTicket</th> 
   					<th>Discount</th>
   					<th>Description</th>
   					<th>Action</th>  
				</tr> 
			</thead> 
			<tbody> 
			    <s:iterator value="seats">
			      <tr> 
   					<td><s:property value="id"/></td> 
    				<td><s:property value="event.title"/></td> 
    				<td><s:property value="seat"/></td>
    				<td><s:property value="price"/></td>
    				<td><s:property value="amountTicket"/></td>
    				<td><s:property value="discount"/></td>
    				<td><s:property value="description"/></td>
    				<td>
    				   <input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit"  name="editSeat" >
    				   <a href="deleteSeat?id=<s:property value="id"/>"> <input type="image" src="<s:url value="/images/icn_trash.png" /> " title="Trash"></a> 
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
     
     
     <div class="clear"></div>
		
		<article class="module width_full">
			<header><h3>Create Seats</h3></header>
			<form action="createSeat" method="post" enctype="multipart/form-data">
				<div class="module_content">
				        <input type="hidden" name="id" value='<s:property value="id"/>'>
						<fieldset style="width:48%; float:left; margin-right: 3%;">
							<label>Seat Name</label>
							<input type="text" style="width:92%;" name="seat" value='<s:property value="seat"/>'>
						</fieldset>
						<fieldset style="width:48%; float:left;">
							<label>Amount Ticket</label>
							<input type="text" style="width:92%;" name="amountTicket" value='<s:property value="amountTicket"/>'>
						</fieldset><div class="clear"></div>
						<fieldset style="width:48%; float:left; margin-right: 3%;">
							<label>Price</label>
							<input type="text" style="width:92%;" name="price" value='<s:property value="price"/>'>
						</fieldset>
						<fieldset style="width:48%; float:left; ">
							<label>Event</label>
							<select style="width:92%;" name="eventId">
								<s:iterator value="events">
								    <option value='<s:property value="id" /> '> <s:property value="title" />  </option>
								</s:iterator>
							</select>
						</fieldset><div class="clear"></div>
						<fieldset>
							<label>Description</label>
							<textarea rows="12" name="description"><s:property value="description"/></textarea>
						</fieldset>
						<fieldset style="width:48%; float:left; margin-right: 3%;"> 
							<label>Discount</label>
							<input type="text" style="width:92%;" name="discount" value='<s:property value="discount"/>' />
						</fieldset>
						<div class="clear"></div>
				</div>
				
			<footer>
                <s:if test="error != ''">
                    <font color="red" style="float:left; margin-left: 3%; padding: 5px 0"><s:property value="error"/></font>
                </s:if>   
				<div class="submit_link">
					<input type="submit" value="Create" class="alt_btn" name="btnSave">
					<input type="reset" value="Reset">
				</div>
			</footer>
		  </form>
		</article><!-- end of post new article -->
		
	
		<div class="spacer"></div>
</section>

<script type="text/javascript" >
     $("input[name='editSeat']").click(function(){
    	 var tr = $(this).parent().parent();
    	 $.each(tr.children("td"),function(item){
    		 if(item == 0)
    	     {
    			 $("input[name='id']").val($(this).text());
    	     }
    		 else if(item == 2)
    	     {
    			 $("input[name='seat']").val($(this).text());		 
         	 }
    		     
    		 else if(item ==3 )
    		 {
    			 $("input[name='price']").val($(this).text());
    		 }
    		 else if(item ==4 )
    		 {
    			 $("input[name='amountTicket']").val($(this).text());
    		 }
    		 else if(item ==5 )
    		 {
    			 $("input[name='discount']").val($(this).text());
    		 }
    		 else if(item ==6 )
    		 {
    			 $("textarea[name='description']").val($(this).text());
    		 }
    	 });
    	 
    	 $('form').attr('action',"updateSeat");
    	 $("input[name='btnSave']").val("Save");
     });
    
</script>
