<%@include file="template.jsp"%>
<%@include file="/common/taglibs.jsp"%>
<section id="main" class="column">
	<article class="module width_3_quarter">
		<header>
			<h3 class="tabs_involved">List Contacts</h3>
		</header>
		<div class="module_content" style="margin: 0px;">
			<table class="tablesorter" cellspacing="0">
				<thead>
					<tr>
						<th>ID</th>
						<th>User</th>
						<th>Title</th>
						<th>Content</th>
						<th>Send Time</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="contacts">
						<tr>
							<td><s:property value="id" /></td>
							<td><s:property value="user.userName" /></td>
							<td><s:property value="title" /></td>
							<td><s:property value="content" />
							<input type="hidden" value='<s:property value="answer" />' name="answer" />
							</td>
							<td><s:property value="sendTime" /></td>
							<td>
							    <input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit" name="btnReply">
							    <a href="deleteContact?contactId=<s:property value="id" />" >
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
			<h3>Answer contact</h3>
		</header>
		<form action="replyContact" method="post">
			<div class="module_content" style="margin: 10px 5px;">
			    <input type="hidden" name="contactId" <s:property value="contactId"/>/>
				<fieldset style="margin: 1%;">
					<label>Name</label>
					<textarea rows="4" name="contactReply" style="width: 86%; margin-bottom: 5px"><s:property value="contactReply"/></textarea>
				</fieldset>
			</div>
			<footer>
				<s:if test="error != ''">
					<font color="red"
						style="float: left; margin-left: 3%; padding: 5px 0"><s:property
							value="error" /></font>
				</s:if>
				<div class="submit_link">
					<input type="submit" value="Reply" class="alt_btn" name="btnSave" />
				</div>
			</footer>
		</form>


	</article>

</section>

<script type="text/javascript" >
     $("input[name='btnReply']").click(function(){
    	 var tr = $(this).parent().parent();
         var id = tr.chirld("td")[0].text();  
         var answer = tr.chirld("input[name='answer']").val();
         $("textarea[name='contactReply']").text(answer);
    	 $("input[name='contactId']").val(id);
    	 $('form').attr('action',"updateRole");
    	 $("input[name='btnSave']").val("Save");
     });
    
</script>