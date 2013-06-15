<%@ include file="template.jsp"%>
<%@include file="/common/taglibs.jsp"%>

<section id="main" class="column">

	<article class="module width_full">
		<header>
			<h3>News Manager</h3>
		</header>
		<div class="tab_container">
			<div id="tab1" class="tab_content">
				<table class="tablesorter" cellspacing="0">
					<thead>
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Content</th>
							<th>Category</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="NewsList">
							<tr>
								<td><s:property value="id" /></td>
								<td><s:property value="title" /></td>
								<td><s:property value="content" /></td>
								<td><s:property value="category.name" /></td>
								<td><input type="image"
									src="<s:url value="/images/icn_edit.png" /> " title="Edit"
									name="editNew"> <a
									href="deleteNew?id=<s:property value="id"/>"> <input
										type="image" src="<s:url value="/images/icn_trash.png" /> "
										title="Trash"></a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
				<footer> </footer>
			</div>
		</div>
	</article>


	<div class="clear"></div>

	<article class="module width_full">
		<header>
			<h3>Create Seats</h3>
		</header>
		<form action="createNew" method="post">
			<div class="module_content">
				<input type="hidden" name="id" value='<s:property value="id"/>'>
				<fieldset style="width: 48%; float: left; margin-right: 3%;">
					<label>Title</label> <input type="text" style="width: 92%;"
						name="title" value='<s:property value="title"/>'>
				</fieldset>
				<div class="clear"></div>
				<fieldset>
					<label>Content</label>
					<textarea rows="12" name="content">
						<s:property value="content" />
					</textarea>
				</fieldset>
				<fieldset style="width: 48%; float: left;">
					<label>Category</label> <select style="width: 92%;"
						name="categoryId">
						<s:iterator value="CatList">
							<option value='<s:property value="id" /> '>
								<s:property value="name" />
							</option>
						</s:iterator>
					</select>
				</fieldset>
				<div class="clear"></div>
			</div>

			<footer>
				<s:if test="error != ''">
					<font color="red"
						style="float: left; margin-left: 3%; padding: 5px 0"><s:property
							value="error" /></font>
				</s:if>
				<div class="submit_link">
					<input type="submit" value="Create" class="alt_btn" name="btnSave">
					<input type="reset" value="Reset">
				</div>
			</footer>
		</form>
	</article>
	<!-- end of post new article -->


	<div class="spacer"></div>
</section>

<script type="text/javascript">
	$("input[name='editNew']").click(function() {
		var tr = $(this).parent().parent();
		$.each(tr.children("td"), function(item) {
			if (item == 0) {
				$("input[name='id']").val($(this).text());
			} else if (item == 1) {
				$("input[name='title']").val($(this).text());
			} else if (item == 2) {
				$("textarea[name='content']").val($(this).text());
			} 

		});

		$('form').attr('action', "updateNew");
		$("input[name='btnSave']").val("Save");
	});
</script>
