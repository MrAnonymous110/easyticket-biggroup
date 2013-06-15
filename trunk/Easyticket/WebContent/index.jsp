<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@include file="/common/header.jsp" %>
 <%@include file="/common/taglibs.jsp" %>
    
<!--content-->
<div class="container">
	<div class="row">
<div class="margin"></div>
<div class="span3">
<!--col left-->
<div class="filter-product">
<h3><s:property value="itemCount"/> Event</h3>
Filter By
</div>
	<div class="colleft-box">
	<h3>City</h3>
	<form action="index" method="post" id="frmCity">
	   <input type="hidden" name="cityId" />
	   <p>
	       <s:if test="cityId == ''"> 
            <input id="check" class="css-checkbox" type="checkbox"  value="" checked="checked"  />
           </s:if>   
           <s:else>
            <input id="check" class="css-checkbox" type="checkbox"  value="" />
            </s:else>   
	      <label for="check" class="css-label" >All</label>   
	   </p>
	   <s:iterator value="cities">
			<p>
			    <s:set id="cityIdSelect" value="cityId" />
			    <s:if test="id == #cityIdSelect"> 
				    <input id="check<s:property value="id" />" class="css-checkbox" type="checkbox"  value="<s:property value="id" />" checked="checked"/>
				</s:if>
				<s:if test="id != #cityIdSelect">
				    <input id="check<s:property value="id" />" class="css-checkbox" type="checkbox"  value="<s:property value="id" />" />
				</s:if>
				<label for="check<s:property value="id" />" class="css-label" ><s:property value="name" /></label>
			</p>
		</s:iterator>
	</form>
	</div>
	<div class="colleft-box">
	<h3>Create Time</h3>
	<form action="index" method="post" id="frmOrderBy">
	    <input type="hidden" name="o" />
		<p>
		    <s:if test="o == 1">
		       <input id="brand1" class="css-checkbox" type="checkbox" value="1" checked="checked"/>
		    </s:if>
		    <s:else>
		       <input id="brand1" class="css-checkbox" type="checkbox" value="1" />
		    </s:else>
			<label for="brand1"  class="css-label">New to old</label>
		</p>
		<p>
		    <s:if test="o == 2">
			    <input id="brand2" class="css-checkbox" type="checkbox" value="2" checked="checked"/>
			</s:if>
			<s:else>
			    <input id="brand2" class="css-checkbox" type="checkbox" value="2"/>
			</s:else>
			<label for="brand2"  class="css-label">Old to new</label>
		</p>
	</form>
	</div>
	
<!--end col left-->
</div>
<div class="span9">
<!--col right-->
<div class="row">
<div class="span9" style="height:10px">

</div>
<div class="span9">
	<div class="row">
	   <s:iterator value="events">
			<div class="span3">
				<!--boxproduct3-->
					<div class="box-product3">
						<div class="img-product"> <img src="<s:property value="imgSrc" /> " alt="" /> <span class="saletab"><s:property value="discount" />%</span> </div>
							<div class="box-product3-content">
							<h3><s:property value="title" /></h3>
						</div>
						<p style="color:#333;margin-left: 10px">Artist : <s:property value="artist" /> </p>
						<p style="color:#333;margin-left: 10px">Start time: <s:property value="startTimeBuild" /></p>
						<span class="view"><a href="details/<s:property value='id' />" >View Detail</a></span><span class="buy"><a href="booking">Booking</a></span>
					</div>              
				<!--end boxproduct3--> 
			</div>
		</s:iterator>
		<div class="clearfix"></div>
	</div>
</div>
<div class="span9">

<div class="page">
  <ul>
    <li><a href="index?p=<s:property value='prevPage' />" >Prev</a></li>
    <s:set id="pcount" value="pcount" />
    <s:iterator begin="1" end="#pcount" var="i">
        <s:if test="p == #i">
             <li><a href="index?p=<s:property value='#i' />" style="background:#F47955; color: white; " ><s:property value='#i' /></a></li>
        </s:if>
        <s:else>
              <li><a href="index?p=<s:property value='#i' />" ><s:property value='#i' /></a></li>
        </s:else>
     </s:iterator>
    <li><a href="index?p=<s:property value='nextPage' />" >Next</a></li>
  </ul>
</div>

</div>
</div>
<div class="clearfix"></div>
<!--end col right-->
</div>
<div class="clearfix"></div>
</div>
</div>
<!--end content--> 
<%@include file="/common/footer.jsp" %>

<script type="text/javascript">
      
      $("#frmCity input[type='checkbox']").change(function(){
    	   var cityId = $(this).val();
    	   $("input[name='cityId']").val(cityId);
    	   $("#frmCity").submit();
      });
      
      $("#frmOrderBy input[type='checkbox']").change(function(){
   	   var orderBy = $(this).val();
   	   $("input[name='o']").val(orderBy);
   	   $("#frmOrderBy").submit();
     });
      
</script>