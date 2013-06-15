<%@ include file="template.jsp" %>
<%@include file="/common/taglibs.jsp" %>
<section id="main" class="column">
		
		<h4 class="alert_info">Welcome to the Admin panel!</h4>
		
		<article class="module width_full">
			<header><h3>Stats</h3></header>
			<div class="module_content">
				<article class="stats_graph">
					<img src="http://chart.apis.google.com/chart?chxr=0,0,3000&chxt=y&chs=520x140&cht=lc&chco=76A4FB,80C65A&chd=s:Tdjpsvyvttmiihgmnrst,OTbdcfhhggcTUTTUadfk&chls=2|2&chma=40,20,20,30" width="520" height="140" alt="" />
				</article>
				
				<article class="stats_overview">
					<div class="overview_today">
						<p class="overview_day">Today</p>
						<p class="overview_count">1,876</p>
						<p class="overview_type">Hits</p>
						<p class="overview_count">2,103</p>
						<p class="overview_type">Views</p>
					</div>
					<div class="overview_previous">
						<p class="overview_day">Yesterday</p>
						<p class="overview_count">1,646</p>
						<p class="overview_type">Hits</p>
						<p class="overview_count">2,054</p>
						<p class="overview_type">Views</p>
					</div>
				</article>
				<div class="clear"></div>
			</div>
		</article><!-- end of stats article -->
		
		
		<article class="module width_full">
			<header><h3>New Booking</h3></header>
			<div class="module_content">
				
				<div class="clear"></div>
			</div>
		</article><!-- end of stats article -->
		
		<article class="module width_full">
		<header><h3 class="tabs_involved">Event Manager</h3>
		<ul class="tabs">
   			<li><a href="#tab1">Event</a></li>
    		<li><a href="#tab2">Seat</a></li>
		</ul>
		</header>

		<div class="tab_container">
			<div id="tab1" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr> 
   					<th></th> 
    				<th>Title</th> 
    				<th>Artist</th>
    				<th>Content</th> 
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
    				<td><s:property value="content"/></td>
    				<td><s:property value="city.name"/></td>
    				<td><s:property value="address"/></td>
    				<td><s:property value="startTime"/></td>
    				<td><s:property value="endTime"/></td>
    				<td>
    				    <img src="<s:url value="%{imgSrc}" />"  style="width: 50px;"   />
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
					<a href="listEvent"><input type="submit" value="View All" class="alt_btn"></a> 
					<input type="submit" value="Delele Selected">
				</div>
			</footer>
			</div><!-- end of #tab1 -->
			
			<div id="tab2" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr> 
   					<th></th> 
    				<th>Seat</th> 
    				<th>Event Title</th> 
    				<th>Amount Ticket</th> 
    				<th>Remain</th>
    				<th>Price</th>
    				<th>Description</th>
    				<th>Actions</th> 
				</tr> 
			</thead> 
			<tbody> 
				<tr> 
   					<td><input type="checkbox"></td> 
    				<td>A</td> 
    				<td>Tho san phu thuy</td> 
    				<td>20</td> 
    				<td>10</td>
    				<td>100000</td>
    				<td>Phim moi full HD</td>
    				<td>
    				    <a href="#"> <input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit"></a>
    				    <a href="#"> <input type="image" src="<s:url value="/images/icn_trash.png" /> " title="Trash"></a>
    				</td> 
				</tr> 
			</tbody> 
			</table>
           	<footer>
				<div class="submit_link">
					<input type="submit" value="View All" class="alt_btn">
					<input type="submit" value="Delele Selected">
				</div>
			</footer>
			</div><!-- end of #tab2 -->
			
		</div><!-- end of .tab_container -->
		
		</article><!-- end of content manager article -->
		
		
		<div class="clear"></div>
		
		<article class="module width_full">
			<header><h3>Create Event</h3></header>
			<form action="createEvent" method="post" enctype="multipart/form-data">
				<div class="module_content">
						<fieldset style="width:48%; float:left; margin-right: 3%;">
							<label>Title</label>
							<input type="text" style="width:92%;" name="title">
						</fieldset>
						<fieldset style="width:48%; float:left;">
							<label>Artist</label>
							<input type="text" style="width:92%;" name="artist">
						</fieldset><div class="clear"></div>
						<fieldset style="width:48%; float:left; margin-right: 3%;">
							<label>Address</label>
							<input type="text" style="width:92%;" name="address">
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
							<textarea rows="12" name="content"></textarea>
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
							<input type="text" name="startTime" style="width:90%;" placeholder="dd/MM/yyyy hh:mm">
						</fieldset>
						<fieldset style="width:31%; float:left;"> 
							<label>Stop Time</label>
							<input type="text" name="endTime" style="width:90%;" placeholder="dd/MM/yyyy hh:mm">
						</fieldset><div class="clear"></div>
						<fieldset>
							<label>Image</label>
							<input type="file" name="image" />
						</fieldset>
				</div>
				
			<footer>
                <s:if test="error != ''">
                    <font color="red" style="float:left; margin-left: 3%; padding: 5px 0"><s:property value="error"/></font>
                </s:if>   
				<div class="submit_link">
					<input type="submit" value="Create" class="alt_btn">
					<input type="reset" value="Reset">
				</div>
			</footer>
		  </form>
		</article><!-- end of post new article -->
		
	
		<div class="spacer"></div>
	</section>
