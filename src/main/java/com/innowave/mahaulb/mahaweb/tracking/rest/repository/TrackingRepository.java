package com.innowave.mahaulb.mahaweb.tracking.rest.repository;

import java.util.List;

import com.innowave.mahaulb.common.dao.trans.TtServiceRequest;





public interface TrackingRepository {
	
	public List<Object[] >  getJSONTrackingListRepo(com.innowave.mahaulb.common.dao.trans.TtServiceRequest searchDto);
	public List<Object[]> getJSONDownlodingAppListRepo(TtServiceRequest searchDownloadApp);
}
