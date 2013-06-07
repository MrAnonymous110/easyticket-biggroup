<%@ include file="template.jsp"%>
<%@include file="/common/taglibs.jsp"%>
<section id="main" class="column">
	<article class="module width_3_quarter">
		<header>
			<h3 class="tabs_involved">List Roles</h3>
		</header>
		<div class="module_content">
			<table class="tablesorter" cellspacing="0">
				<thead>
					<tr>
						<th></th>
						<th>Code</th>
						<th>Role Name</th>
						<th>Description</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="roles">
						<tr>
							<td><input type="checkbox" name="deleteId"></td>
							<td><s:property value="id" /></td>
							<td><s:property value="name" /></td>
							<td><s:property value="description" /></td>
							<td>
							    <input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit" name="editRole">
							    <a href="deleteRole?roleId=<s:property value="id" />" >
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
			<h3>Create role</h3>
		</header>
		<form action="createRole" method="post">
			<div class="module_content" style="margin: 10px 5px;">
			    <input type="hidden" name="roleId" />
				<fieldset style="margin: 1%;">
					<label>Name</label> <input type="text"
						style="width: 86%; margin-bottom: 5px" name="roleName"
						value='<s:property value="name" />'>
				</fieldset>
				<fieldset style="margin: 1%;">
					<label>Description</label>
					<textarea rows="3" name="roleDescription"
						style="width: 86%; margin-bottom: 5px"></textarea>
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
     $("input[name='editRole']").click(function(){
    	 var tr = $(this).parent().parent();
    	 $.each(tr.children("td"),function(item){
    		 if(item == 1)
    	     {
    			 $("input[name='roleId']").val($(this).text());
    	     }
    		 else if(item == 2)
    	     {
    			 $("input[name='roleName']").val($(this).text());		 
         	 }
    		     
    		 else if(item ==3 )
    		 {
    			 $("textarea[name='roleDescription']").val($(this).text());
    		 }
    	 });
    	 
    	 $('form').attr('action',"updateRole");
    	 $("input[name='btnSave']").val("Save");
     });
    
</script>