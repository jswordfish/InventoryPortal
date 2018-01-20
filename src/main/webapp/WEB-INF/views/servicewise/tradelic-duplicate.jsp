<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="row">
	<div class="form-group"> 
     	<label for="licNO" class="col-md-2 col-sm-12 col-xs-12"><spring:message code="label.document.duplic.tradeno" />:</label> 
     	<div class="col-md-4 col-sm-12 col-xs-12"> 
     		<div class="input-group">
     			<input type="text" class=" form-control" id="licNO"/> 
     			<span class="input-group-addon">
     				<a href="#" id="searchLicenDet"><i class="fa fa-question-circle" style="font-size:20px"></i></a>
     			</span>
     		</div>
     	</div> 
     	<div class="col-md-2 col-sm-12 col-xs-12"> 
       		<input type="button" class="btn btn-primary" value="Search" id="licSearch">
     	</div>
    </div>
</div>