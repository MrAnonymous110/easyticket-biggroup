<%@ include file="template.jsp" %>
<%@include file="/common/taglibs.jsp" %>
<section id="main" class="column">
     <article class="module width_3_quarter">
		<header><h3 class="tabs_involved">List Roles</h3></header>
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
   					<td><input type="checkbox" name="id"></td> 
    				<td><s:property value="id"/> </td> 
    				<td><s:property value="name"/></td> 
    				<td><s:property value="description"/></td>
    				<td>
    				   <input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit">
    				   <input type="image" src="<s:url value="/images/icn_trash.png" /> " title="Trash">
    				</td> 
				</tr> 
			    </s:iterator>		
			</tbody> 
			</table>
		</div>
     </article>
     
     <article class="module width_quarter">
	     <header><h3>Create role</h3></header>
	     <div class="module_content" style="margin: 10px 5px;">
	         <form action="createRole" method="post">
				<fieldset style="margin:1%;">
					<label>Name</label>
					<input type="text" style="width:86%;margin-bottom: 5px" name="name" value='<s:property value="name" />' >
				</fieldset>
				<fieldset style="margin:1%;">
					<label>Description</label>
					<textarea rows="3" name="description" style="width:86%; margin-bottom: 5px" ></textarea>
				</fieldset>
	         </form>
	     </div>
	 </article>
    
</section>