<%@ include file="template.jsp" %>
<%@include file="/common/taglibs.jsp" %>

<section id="main" class="column">
     
     <article class="module width_full">
		<header><h3>Users Manager</h3></header>
		<div class="tab_container">
			<div id="tab1" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr> 
   					<th></th> 
    				<th>User Name</th> 
    				<th>Full Name</th>
    				<th>Email</th> 
    				<th>Address</th>
    				<th>Phone</th> 
    				<th>BirthDay</th>
    				<th>Role</th>
    				<th>Create Date</th>
    				<th>Actions</th>
				</tr> 
			</thead> 
			<tbody> 
			    <s:iterator value="users">
			      <tr> 
   					<td><input type="checkbox" name="userIds"></td> 
    				<td><s:property value="userName"/> </td> 
    				<td><s:property value="fullName"/></td> 
    				<td><s:property value="email"/></td>
    				<td><s:property value="address"/></td>
    				<td><s:property value="phone"/></td>
    				<td><s:property value="birthDay"/></td>
    				<td><s:property value="role.name"/></td>
    				<td><s:property value="createDate"/></td>
    				<td>
    				   <a href="editUser?id=<s:property value="id"/>"><input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit"></a>
    				   <a href="deleteUser?id=<s:property value="id"/>"> <input type="image" src="<s:url value="/images/icn_trash.png" /> " title="Trash"></a> 
    				</td> 
				</tr> 
			    </s:iterator>		
			</tbody> 
			</table>
			<footer>
				<div class="submit_link">
					<a href="newUser"><input type="submit" value="Create Users" class="alt_btn"></a> 
					<input type="submit" value="Delele Selected">
				</div>
			</footer>
			</div>
	   </div>
     </article>
</section>