<%@ include file="template.jsp" %>
<%@include file="/common/taglibs.jsp" %>

<section id="main" class="column">

<article class="module width_full">
	<header><h3>Edit Event</h3></header>
	<form action="updateEvent" method="post" enctype="multipart/form-data">
		<div class="module_content">
		        <input type="hidden" name="eventId" value='<s:property value="event.id" />' >
				<fieldset style="width:48%; float:left; margin-right: 3%;">
					<label>Title</label>
					<input type="text" style="width:92%;" name="title" value='<s:property value="event.title" />' >
				</fieldset>
				<fieldset style="width:48%; float:left;">
					<label>Artist</label>
					<input type="text" style="width:92%;" name="artist" value='<s:property value="event.artist" />' >
				</fieldset><div class="clear"></div>
				<fieldset style="width:48%; float:left; margin-right: 3%;">
					<label>Address</label>
					<input type="text" style="width:92%;" name="address" value='<s:property value="event.address" />' >
				</fieldset>
				<fieldset style="width:48%; float:left; ">
					<label>City</label>
					<select style="width:92%;" name="cityId">
					    <s:set name="cityIdSelect" value="event.city.id" />
					    <option selected="selected" value='<s:property value="#cityIdSelect" />' >
					         <s:property value="event.city.name" /> 
					    </option> 
						<s:iterator value="cities">
						    <s:if test="id != #cityIdSelect">
						        <option value='<s:property value="id" />'><s:property value="name"/> </option>
						    </s:if>
						 </s:iterator>
					</select>
				</fieldset><div class="clear"></div>
				<fieldset>
					<label>Content</label>
					<textarea rows="12" name="content"><s:property value="event.content" /></textarea>
				</fieldset>
				<fieldset style="width:31%; float:left; margin-right: 3%;"> 
					<label>Event Type</label>
					<select style="width:92%;" name="eventTypeId">
					    <s:set name="typeIdSelect" value="event.eventType.id" />
					    <option selected="selected" value='<s:property value="#typeIdSelect" />' >
					         <s:property value="event.eventType.name"/>
					    </option>
						<s:iterator value="eventTypes">
						     <s:if test="id != #typeIdSelect">
						         <option value='<s:property value="id" />'><s:property value="name"/> </option>
						      </s:if>
						 </s:iterator>
					</select>
				</fieldset>
				<fieldset style="width:31%; float:left; margin-right: 3%;"> 
					<label>Start Time</label>
					<input type="text" name="startTime" style="width:90%;" placeholder="dd/MM/yyyy hh:mm" value='<s:property value="event.startTime" />' >
				</fieldset>
				<fieldset style="width:31%; float:left;"> 
					<label>Stop Time</label>
					<input type="text" name="endTime" style="width:90%;" placeholder="dd/MM/yyyy hh:mm" value='<s:property value="event.endTime" />' >
				</fieldset><div class="clear"></div>
				<fieldset>
					<label>Image</label>
					<s:set name="imgSrc" value="event.imgSrc" /> 
					<input type="file" name="image" accept="image/png,image/gif,image/jpeg,image/pjpeg" />
					<img src="<s:url value="%{imgSrc}" />"  style="height: 100px"   />
				</fieldset>
		</div>
		
	<footer>
         <s:if test="error != ''">
             <font color="red" style="float:left; margin-left: 3%; padding: 5px 0"><s:property value="error"/></font>
         </s:if>   
		<div class="submit_link">
			<input type="submit" value="Save" class="alt_btn" />
			<input type="button" value="Back" onclick="javascript:history.back(1)" />
		</div>
	</footer>
  </form>
</article><!-- end of post new article -->
</section>