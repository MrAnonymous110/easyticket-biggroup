<%@include file="template.jsp"%>
<%@include file="/common/taglibs.jsp"%>
<section id="main" class="column">
	<article class="module width_3_quarter">
		<header>
			<h3 class="tabs_involved">List FAQ</h3>
		</header>
		<div class="module_content" style="margin: 0px;">
			<table class="tablesorter" cellspacing="0">
				<thead>
					<tr>
					    <th>ID</th>
						<th>Question</th>
						<th>Answer</th>
						<th>Create Time</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="faqs">
						<tr>
							<td><s:property value="id" /></td>
							<td><s:property value="question" /></td>
							<td><s:property value="answer" /></td>
							<td><s:property value="createTime" /></td>
							
							<td>
							    <input type="image" src="<s:url value="/images/icn_edit.png" /> " title="Edit" name="editFaq">
							    <a href="deleteFaq?faqId=<s:property value="id" />" >
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
			<h3>Manager</h3>
		</header>
		<form action="insertFaq" method="post">
			<div class="module_content" style="margin: 10px 5px;">
			    <input type="hidden" name="faqId" />
				<fieldset style="margin: 1%;">
					<label>Question</label>
					 <textarea style="width: 86%; margin-bottom: 5px" name="faqQuestion"><s:property value="faqQuestion" /></textarea>
				</fieldset>
				<fieldset style="margin: 1%;">
					<label>Answer</label> <textarea style="width: 86%; margin-bottom: 5px" name="faqAnswer"><s:property value="faqAnswer" /></textarea>
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
     $("input[name='editFaq']").click(function(){
    	 var tr = $(this).parent().parent();
    	 $.each(tr.children("td"),function(item){
    		 if(item ==0)
    	     {
    			 $("input[name='faqId']").val($(this).text());
    	     }
    	     else if(item == 1)
    	     {
    			 $("textarea[name='faqQuestion']").text($(this).text());
    	     }
    		 else if(item == 2)
    	     {
    			 $("textarea[name='faqAnswer']").text($(this).text());		 
         	 }
    	 });
    	 
    	 $('form').attr('action',"updateFaq");
    	 $("input[name='btnSave']").val("Save");
     });
    
</script>