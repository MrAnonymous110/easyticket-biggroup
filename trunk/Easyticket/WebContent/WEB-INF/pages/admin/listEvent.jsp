<%@ include file="template.jsp" %>
<%@include file="/common/taglibs.jsp" %>

<section id="main" class="column">
     
     <article class="module width_full">
		<header><h3>Event Manager</h3></header>
		<div class="tab_container">
			<div id="tab1" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr> 
   					<th></th> 
    				<th>Title</th> 
    				<th>Artist</th>
    				<th>City</th>
    				<th>Address</th> 
    				<th>Start time</th>
    				<th>End time</th>
    				<th>Image</th>
    				<th>Actions</th>
				</tr> 
			</thead> 
			<tbody> 
			    <s:iterator value="events">
			      <tr> 
   					<td><input type="checkbox" name="eventIds"></td> 
    				<td><s:property value="title"/> </td> 
    				<td><s:property value="artist"/></td> 
    				<td><s:property value="city.name"/></td>
    				<td><s:property value="address"/></td>
    				<td><s:property value="startTime"/></td>
    				<td><s:property value="endTime"/></td>
    				<td>
    				    <img src="<s:url value="%{imgSrc}" />" style="width: 50px" />
    				</td>
    				<td>
    				   <a href="editEvent?eventId=<s:property value="id"/>"><input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit"></a>
    				   <a href="deleteEvent?eventId=<s:property value="id"/>"> <input type="image" src="<s:url value="/images/icn_trash.png" /> " title="Trash"></a> 
    				</td> 
				</tr> 
			    </s:iterator>		
			</tbody> 
			</table>
			<footer>
				<div class="submit_link">
					<a href="newEvent"><input type="submit" value="New Event" class="alt_btn"></a> 
					<input type="submit" value="Delele Selected">
				</div>
			</footer>
			</div>
	   </div>
     </article>
</section>