
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <div class="toggle-header" data-target="#checklist"><h2 class="StepTitle toggle-header">Checklist Details <i class="material-icons toggle-icon">keyboard_arrow_down</i></h2></div> -->
  <div class="form-body container-fluid">
			<c:forEach var="innerList" items="${CheckListhelperWrapAL}" varStatus="mainChk">
				<div class="" id="formDetailsOuterDiv">
					
						<h3>${innerList.docType}</h3>
						<input type="hidden" id="docType${mainChk.index }" value="${innerList.docType}">
						<div class="clearfix"></div>
					
					<div class="">
						<br>

						<div class="row fileValidation" id="fileValidation-${mainChk.index }">
							<c:forEach var="obj" items="${innerList.checkListHelperList}" varStatus="lk">
							
								<div class="col-md-6" style="padding:5px;">
									<div class="">
										<label class="control-label col-md-3">${obj.label}</label>
										<div class="col-md-8">
										<input type="hidden" name="checklistId" value="${obj.checkListId}"/>
										<input type="hidden" name="fileType" value="${obj.label}"/>
							  <!--  <input type="file" name="files" multiple="multiple" class="fileUploadClass"/> -->
                                 <div class="input-group">
						            <span class="input-group-btn">
						                <span class="btn btn-default btn-file">
						                    Browse <input type="file" id="imgInp" name="files" multiple="multiple">
						                </span>
						            </span>
						       		 <input type="text" class="form-control"  readonly> 
						          </div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<%-- <h2 class="StepTitle">Fees</h2>  
                          <div class="form-group">
                            	 <label class="control-label col-md-2 col-sm-2 col-xs-12">Charges:
	                            	</label>
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <input type="text" id="totalAmt" class="form-control" required="required" name="finalAmount">
	                            </div>
	                           <c:if test="${payFlag eq 'A'} ">
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <button type="button" id="" class="btn">Pay</button>
	                            </div>
                         	</c:if>
                         	<c:if test="${payFlag eq 'S'} ">
	                            <div class="col-md-4 col-sm-4 col-xs-12">
	                              <button type="button" id="" class="btn">Submit</button>
	                            </div>
                         	</c:if>
                          	</div> --%>
	<!-- <script>
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
	 -->