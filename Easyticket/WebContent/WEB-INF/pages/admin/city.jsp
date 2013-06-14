<%@include file="template.jsp"%>
<%@include file="/common/taglibs.jsp"%>
<section id="main" class="column">
	<article class="module width_3_quarter">
		<header>
			<h3 class="tabs_involved">List City</h3>
		</header>
		<div class="module_content" style="margin: 0px;">
			<table class="tablesorter" cellspacing="0">
				<thead>
					<tr>
						<th>ID</th>
						<th>City Name</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="cities">
						<tr>
							<td><s:property value="id" /></td>
							<td><s:property value="name" /></td>
							<td>
							    <input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit" name="editCity">
							    <a href="deleteCity?cityId=<s:property value="id" />" >
								    <input type="image" src="<s:url value="/images/icn_trash.png" /> " title="Trash">
								</a>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</article>

	<article class="module width_quarter">
		<header>
			<h3>Save</h3>
		</header>
		<form action="insertCity" method="post">
			<div class="module_content" style="margin: 10px 5px;">
			    <input type="hidden" name="city.id" />
				<fieldset style="margin: 1%;">
					<label>Name</label> <input type="text"
						style="width: 86%; margin-bottom: 5px" name="city.name"
						value='<s:property value="name" />'>
				</fieldset>
			</div>
			<footer>
				<s:if test="error != ''">
					<font color="red"
						style="float: left; margin-left: 3%; padding: 5px 0"><s:property
							value="error" /></font>
				</s:if>
				<div class="submit_link">
					<input type="submit" value="Create" class="alt_btn" name="btnSave" />
				</div>
			</footer>
		</form>


	</article>

</section>

<script type="text/javascript" >
     $("input[name='editCity']").click(function(){
    	 var tr = $(this).parent().parent();
    	 $.each(tr.children("td"),function(item){
    		 if(item == 0)
    	     {
    			 $("input[name='city.id']").val($(this).text());
    	     }
    		 else if(item == 1)
    	     {
    			 $("input[name='city.name']").val($(this).text());		 
         	 }
    	 });
    	 
    	 $('form').attr('action',"updateCity");
    	 $("input[name='btnSave']").val("Save");
     });
    
</script>