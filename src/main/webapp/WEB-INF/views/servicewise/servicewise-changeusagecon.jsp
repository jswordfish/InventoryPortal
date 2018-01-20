<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="toggle-header" data-target="#recon-div">
    <h2 class="StepTitle">
        <spring:message code="label.document.citizenser.usageTitle"/> <i class="glyphicon glyphicon-chevron-down toggle-icon"><span>keyboard_arrow_down</span></i>
    </h2>
</div>
<div id="recon-div">
    <form>
        <div class="form-group">
            <div class="text-center">
                <label class="form-group">
                    <spring:message code="label.document.appusagepipe.exsistown" />:
                </label>
            </div>
            <div class="col-md-2 col-sm-12 col-xs-12">
                <label>
                    <spring:message code="label.document.appusagepipe.customerno" />:
                </label>
            </div>
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="input-group">
                    <%-- <input type="hidden"  name="connectionNo" id="connectionNo"> --%>
                    <input type="text" class=" form-control" name="connectionNo" value="${ConnectionNo}" id="consumNum">
			<span class="input-group-addon hideData"> 
                        <a id="searchWaterDet"><i class="fa fa-question-circle" style="font-size:20px"></i>
                        </a>
                    </span>
                </div>
            </div>
            <div class="col-md-2 col-md-offset-1 col-sm-12 col-xs-12">
                <div>
                    <label>
                        <spring:message code="label.document.appusagepipe.customername" />:
                    </label>
                </div>
            </div>
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div>
                    <input type="hidden" id="consumerId" value="0">
                    <input type="text" class="form-control" id="conFullName" disabled>
                </div>
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="text-center">
                    <label>
                        <spring:message code="label.document.appusagepipe.usage" />
                    </label>
                </div>
                <div>
                    <input type="hidden" id="conUsageId" value="0">
                    <input type="text" class="form-control" id="conUsage" disabled>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="text-center">
                    <label>
                        <spring:message code="label.document.appusagepipe.subusage" />
                    </label>
                </div>
                <div>
                    <input type="hidden" id="conSubUsageId" value="0">
                    <input type="text" class="form-control" id="conSubUsage" disabled>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="text-center">
                    <label>
                        <spring:message code="label.document.appusagepipe.connectsize" />
                    </label>
                </div>
                <div>
                    <input type="hidden" id="conPipeSizeId" value="0">
                    <input type="text" class="form-control" id="conPipeSize" disabled>
                </div>
            </div>
        </div>
        
        <div class="form-group" id="radioDiv" style="display:none">
            <div class="col-md-2 col-md-offset-4 col-sm-12 col-xs-12">
                <div class="radio" id="usageidDiv">
                    <label><input type="radio" name="single" id="usageid" style="width: auto;"><spring:message code="label.document.appusagepipe.usage" /></label>
                </div>
            </div>
            <div class="col-md-2 col-sm-12 col-xs-12">
                <div class="radio" id="pipesizeDiv">
                    <label><input type="radio" name="single" id="pipesize" style="width: auto;"><spring:message code="label.document.appusagepipe.pipesize" /></label>
                </div>
            </div>
            <div class="col-md-2 col-sm-12 col-xs-12">
                <div class="radio" id="bothDiv">
                    <label><input type="radio" name="single" id="both" style="width: auto;"><spring:message code="label.document.appusagepipe.both" /></label>
                </div>
            </div>
        </div>
        
        <div class="form-group">
            <div id="showusage" style="display:none">
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="text-center">
                        <label>
                            <spring:message code="label.document.appusagepipe.usage" />
                        </label>
                    </div>
                    <div>
                        <select class="form-control" id="lookupDetHierIdUsageId1" name="lookupDetHierIdUsage1" required>
                            <option value="0">- Select Usage Type -</option>
                            <c:forEach items="${usageType}" var="usageTypel">
                            <option value= "${usageTypel.lookupDetHierId}" > ${usageTypel.lookupDetHierDescEn} (${usageTypel.lookupDetHierDescRg})</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="text-center">
                        <label>
                            <spring:message code="label.document.appusagepipe.subusage" />
                        </label>
                    </div>
                    <div>
                        <select class="form-control" id="subUsageIdd" name="subUsageId" required>
                            <option value="0">- First Select Usage Type -</option>
                        </select>
                    </div>
                </div>
            </div>
            <div id="showpipesize" style="display:none">
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="text-center">
                        <label>
                            <spring:message code="label.document.appusagepipe.pipesize" />
                        </label>
                    </div>
                    <div>
                        <select class="form-control" id="pipeSize" name="pipeSize" required>
                            <option value="0">- Select Connection Size -</option>
                        </select>
	                <input type="text" class="form-control" id="pipeSizeView" readonly="readonly">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>