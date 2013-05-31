<%@ include file="template.jsp" %>
<%@include file="/common/taglibs.jsp" %>

<section id="main" class="column">

<article class="module width_full">
	<header><h3>New Event</h3></header>
	<form action="createEvent" method="post" enctype="multipart/form-data">
		<div class="module_content">
				<fieldset style="width:48%; float:left; margin-right: 3%;">
					<label>Title</label>
					<input type="text" style="width:92%;" name="title" value='<s:property value="title" />' >
				</fieldset>
				<fieldset style="width:48%; float:left;">
					<label>Artist</label>
					<input type="text" style="width:92%;" name="artist" value='<s:property value="artist" />' >
				</fieldset><div class="clear"></div>
				<fieldset style="width:48%; float:left; margin-right: 3%;">
					<label>Address</label>
					<input type="text" style="width:92%;" name="address" value='<s:property value="address" />' >
				</fieldset>
				<fieldset style="width:48%; float:left; ">
					<label>City</label>
					<select style="width:92%;" name="cityId">
						<s:iterator value="cities">
						        <option value='<s:property value="id" />'><s:property value="name"/> </option>
						 </s:iterator>
					</select>
				</fieldset><div class="clear"></div>
				<fieldset>
					<label>Content</label>
					<textarea rows="12" name="content"><s:property value="content" /></textarea>
				</fieldset>
				<fieldset style="width:31%; float:left; margin-right: 3%;"> 
					<label>Event Type</label>
					<select style="width:92%;" name="eventTypeId">
						<s:iterator value="eventTypes">
						         <option value='<s:property value="id" />'><s:property value="name"/> </option>
						 </s:iterator>
					</select>
				</fieldset>
				<fieldset style="width:31%; float:left; margin-right: 3%;"> 
					<label>Start Time</label>
					<input type="text" name="startTime" style="width:90%;" placeholder="dd/MM/yyyy hh:mm" value='<s:property value="startTime" />' >
				</fieldset>
				<fieldset style="width:31%; float:left;"> 
					<label>Stop Time</label>
					<input type="text" name="endTime" style="width:90%;" placeholder="dd/MM/yyyy hh:mm" value='<s:property value="endTime" />' >
				</fieldset><div class="clear"></div>
				<fieldset>
					<label>Image</label>
					<input type="file" name="image" accept="image/png,image/gif,image/jpeg,image/pjpeg" />
				</fieldset>
		</div>
		
	<footer>
         <s:if test="error != ''">
             <font color="red" style="float:left; margin-left: 3%; padding: 5px 0"><s:property value="error"/></font>
         </s:if>   
		<div class="submit_link">
			<input type="submit" value="Create" class="alt_btn" />
			<input type="button" value="Back" onclick="javascript:history.back(1)" />
		</div>
	</footer>
  </form>
</article><!-- end of post new article -->
</section>