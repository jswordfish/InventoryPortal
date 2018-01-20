package com.innowave.mahaulb.mahaweb.tracking.helper;

import java.util.ArrayList;
import java.util.List;

import com.innowave.mahaulb.common.dao.trans.TtServiceRequest;
import com.innowave.mahaulb.portal.utils.StringHelperUtils;


public class TrackingHepler {
	public List<com.innowave.mahaulb.common.dao.trans.TtServiceRequest> getViewTrackingDetails(List<Object[] > lsttracking) {
		TtServiceRequest obj = new TtServiceRequest();
		List<TtServiceRequest> lstObj = new ArrayList<TtServiceRequest>();
		if(!lsttracking.isEmpty()) {
		for(Object[] objLst : lsttracking) {
					obj.setSrNumber(StringHelperUtils.isNullString(objLst[0]));
					obj.setOrganisationName(StringHelperUtils.isNullString(objLst[1]));
					obj.setApplicantName(StringHelperUtils.isNullString(objLst[2]));
					obj.setOrganisationAddress(StringHelperUtils.isNullString(objLst[3]));
					//String name = StringHelperUtils.isNullString(objLst[2]).concat(" ").concat(StringHelperUtils.isNullString(objLst[3]).toString()).concat(" ").concat(StringHelperUtils.isNullString(objLst[4]));
					//obj.setNameEn(name);
					lstObj.add(obj);
				}
			}
			return lstObj;
		}
		
		public List<TtServiceRequest> getViewDownloadingAppDetails(List<Object[] > lstdownloadingapp) {
			TtServiceRequest obj = new TtServiceRequest();
			List<TtServiceRequest> lstObj = new ArrayList<TtServiceRequest>();
			if(!lstdownloadingapp.isEmpty()) {
			for(Object[] objLst : lstdownloadingapp) {
						obj.setSrNumber(StringHelperUtils.isNullString(objLst[0]));
						obj.setOrganisationName(StringHelperUtils.isNullString(objLst[1]));
						obj.setApplicantName(StringHelperUtils.isNullString(objLst[2]));
						obj.setOrganisationAddress(StringHelperUtils.isNullString(objLst[3]));
						//String name = StringHelperUtils.isNullString(objLst[2]).concat(" ").concat(StringHelperUtils.isNullString(objLst[3]).toString()).concat(" ").concat(StringHelperUtils.isNullString(objLst[4]));
						//obj.setNameEn(name);
						lstObj.add(obj);
					}
				}
			return lstObj;
		}

}
