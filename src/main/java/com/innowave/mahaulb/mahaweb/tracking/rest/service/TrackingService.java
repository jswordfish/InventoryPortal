package com.innowave.mahaulb.mahaweb.tracking.rest.service;

import com.innowave.mahaulb.common.dao.trans.TtServiceRequest;

public interface TrackingService {
	
	public String getJSONTrackingListServ(com.innowave.mahaulb.common.dao.trans.TtServiceRequest searchDto);
	public String getJSONDownloadingAppServ(TtServiceRequest searchDownloadApp);

}
