<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://htmlcompressor.googlecode.com/taglib/compressor"
	prefix="compress"%>

<compress:html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Government of Maharashtra</title>

<link rel="icon" href="images/favicon.ico">
<jsp:include page="../homeheader.jsp" />
</head>
<body>
	<jsp:include page="../citizenHeaderTop.jsp" /> 

	<div class="prop-section">

		<div class="container">
			<div class="form-title">
				<h1><spring:message code="label.service.changenameownerpartner.title"/></h1>
				<span class="home-icon"><i class="fa fa-home"></i></span>
			</div><!-- form-title -->
			<div>
				<div class="ulb-section">
						<div class="toggle-header" data-target="#application-details">
							<h2 class="StepTitle">
								<spring:message code="label.service.propertytransfer.applicantpagetitle"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
							</h2>
						</div>
					
						<form id="frmData">
							<div id="application-details">
								<div class="row">
									<div class="form-group col-md-12 col-sm-12 col-xs-12">
										<label class="col-md-2" for="ulb-name">
											<spring:message code="label.service.transferlicense.ulbName"/><span class="required">*</span>:
										</label>
										
										<div class="col-md-6">
											<select class=" form-control" id="ulbIdDesc">
												<option value="">Select ULB</option>
											</select>
										</div>
									</div>
									
									<div class="form-group col-md-12 col-sm-12 col-xs-12">
										<label class="col-md-2" for="ulb-name">
											<spring:message code="label.service.transferlicense.serviceName"/>:
										</label>
										<div class="col-md-6">
											<input class=" form-control" id="setServiceId" disabled="disabled"/>
										</div>
									</div>
								</div>
								
								<%-- <jsp:include page="../../common/maha-dma/applicant-details.jsp" /> --%>
							</div>
						</form>

						<jsp:include page="../../servicewise/change-in-name-of-owner-partners-service.jsp" />
					
						<%-- <jsp:include page="checklist.jsp" /> --%>
                          	
                     	<div class="toggle-header" data-target="#charges-details">
                     		<h2 class="StepTitle"><spring:message code="label.service.changenameownerpartner.charges"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i></h2>
                     	</div>
                     	 	
						<div id="charges-details">
						 	<div class="form-group">
						   	 	<label class="control-label col-md-2 col-sm-2 col-xs-12"><spring:message code="label.service.changenameownerpartner.charges"/>:</label>
							    <div class="col-md-4 col-sm-4 col-xs-12">
							      	<input type="text" id="charges" class="form-control" disabled="disabled">
							    </div>
						 	</div>
						 </div>
						 
						 <div class="actionBar">
							<button type="button" id="addDiv" class="btn"><spring:message code="label.btn.submit" /></button> 
							<input class="btn" type="reset" value="<spring:message code="label.btn.reset" />">
						</div>
					</div>
			</div>
		</div>

	</div>
	
	<jsp:include page="jsFooter.jsp" />
	<jsp:include page="../citizenFooter.jsp" />

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script src="<c:url value="/maha-dma/js/waitingfor.js" />"></script>
	<script src="<c:url value="/maha-dma/js/dropdown.js" />"></script>
	<script src="<c:url value="/maha-dma/js/app.js" />"></script>
	<%-- <script src="<c:url value="/maha-dma/js/custom.js" />"></script>  --%>
	<script>
	
		$(document).ready(function(){
			$(document).on('click', '.toggle-header', function(e){
			$content = $($(this).data('target'));
		    
		    if(!$content.is(':visible')){
		      $content.slideDown('slow');
		      $(this).find('i.toggle-icon span').html('keyboard_arrow_up')
		    }
		    else{
		    	$content.slideUp('slow');
		      $(this).find('i.toggle-icon span').html('keyboard_arrow_down')
		    }
		  });
		});

	</script>
<script>
!function(e){var t=function(t,n){this.$element=e(t),this.type=this.$element.data("uploadtype")||(this.$element.find(".thumbnail").length>0?"image":"file"),this.$input=this.$element.find(":file");if(this.$input.length===0)return;this.name=this.$input.attr("name")||n.name,this.$hidden=this.$element.find('input[type=hidden][name="'+this.name+'"]'),this.$hidden.length===0&&(this.$hidden=e('<input type="hidden" />'),this.$element.prepend(this.$hidden)),this.$preview=this.$element.find(".fileupload-preview");var r=this.$preview.css("height");this.$preview.css("display")!="inline"&&r!="0px"&&r!="none"&&this.$preview.css("line-height",r),this.original={exists:this.$element.hasClass("fileupload-exists"),preview:this.$preview.html(),hiddenVal:this.$hidden.val()},this.$remove=this.$element.find('[data-dismiss="fileupload"]'),this.$element.find('[data-trigger="fileupload"]').on("click.fileupload",e.proxy(this.trigger,this)),this.listen()};t.prototype={listen:function(){this.$input.on("change.fileupload",e.proxy(this.change,this)),e(this.$input[0].form).on("reset.fileupload",e.proxy(this.reset,this)),this.$remove&&this.$remove.on("click.fileupload",e.proxy(this.clear,this))},change:function(e,t){if(t==="clear")return;var n=e.target.files!==undefined?e.target.files[0]:e.target.value?{name:e.target.value.replace(/^.+\\/,"")}:null;if(!n){this.clear();return}this.$hidden.val(""),this.$hidden.attr("name",""),this.$input.attr("name",this.name);if(this.type==="image"&&this.$preview.length>0&&(typeof n.type!="undefined"?n.type.match("image.*"):n.name.match(/\.(gif|png|jpe?g)$/i))&&typeof FileReader!="undefined"){var r=new FileReader,i=this.$preview,s=this.$element;r.onload=function(e){i.html('<img src="'+e.target.result+'" '+(i.css("max-height")!="none"?'style="max-height: '+i.css("max-height")+';"':"")+" />"),s.addClass("fileupload-exists").removeClass("fileupload-new")},r.readAsDataURL(n)}else this.$preview.text(n.name),this.$element.addClass("fileupload-exists").removeClass("fileupload-new")},clear:function(e){this.$hidden.val(""),this.$hidden.attr("name",this.name),this.$input.attr("name","");if(navigator.userAgent.match(/msie/i)){var t=this.$input.clone(!0);this.$input.after(t),this.$input.remove(),this.$input=t}else this.$input.val("");this.$preview.html(""),this.$element.addClass("fileupload-new").removeClass("fileupload-exists"),e&&(this.$input.trigger("change",["clear"]),e.preventDefault())},reset:function(e){this.clear(),this.$hidden.val(this.original.hiddenVal),this.$preview.html(this.original.preview),this.original.exists?this.$element.addClass("fileupload-exists").removeClass("fileupload-new"):this.$element.addClass("fileupload-new").removeClass("fileupload-exists")},trigger:function(e){this.$input.trigger("click"),e.preventDefault()}},e.fn.fileupload=function(n){return this.each(function(){var r=e(this),i=r.data("fileupload");i||r.data("fileupload",i=new t(this,n)),typeof n=="string"&&i[n]()})},e.fn.fileupload.Constructor=t,e(document).on("click.fileupload.data-api",'[data-provides="fileupload"]',function(t){var n=e(this);if(n.data("fileupload"))return;n.fileupload(n.data());var r=e(t.target).closest('[data-dismiss="fileupload"],[data-trigger="fileupload"]');r.length>0&&(r.trigger("click.fileupload"),t.preventDefault())})}(window.jQuery)


$(document).on('change', '.btn-file :file', function() {
 		var input = $(this),
 			label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
 		input.trigger('fileselect', [label]);
 		});

 		$('.btn-file :file').on('fileselect', function(event, label) {
 		    
 		    var input = $(this).parents('.input-group').find(':text'),
 		        log = label;
 		    
 		    if( input.length ) {
 		        input.val(log);
 		    } else {
 		        if( log ) alert(log);
 		    }
 	    
 		});
 		function readURL(input) {
 		    if (input.files && input.files[0]) {
 		        var reader = new FileReader();
 		        
 		        reader.onload = function (e) {
 		            $('#img-upload').attr('src', e.target.result);
 		        }
 		        
 		        reader.readAsDataURL(input.files[0]);
 		    }
 		}

 		$("#imgInp").change(function(){
 		    readURL(this);
 	});
</script>
</body>
</html>
</compress:html>