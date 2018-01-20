package com.innowave.mahaulb.mahaweb.tracking.rest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.innowave.mahaulb.common.dao.trans.TtServiceRequest;
import com.innowave.mahaulb.mahaweb.tracking.helper.TrackingHepler;
import com.innowave.mahaulb.mahaweb.tracking.rest.repository.TrackingRepository;
import com.innowave.mahaulb.portal.helper.JsonResponseHelper;
@Service("trackingService")
@Transactional
public class TrackingServiceImpl implements TrackingService {

	@Autowired
	TrackingRepository trackingRepository;
	@Override
	public String getJSONTrackingListServ(TtServiceRequest searchDto ) {
		
		TrackingHepler helper = new TrackingHepler();
		
		List<Object[]> lstprop = trackingRepository.getJSONTrackingListRepo(searchDto);
		Gson gson = new Gson();
		String str = gson.toJson(helper.getViewTrackingDetails(lstprop));
		return JsonResponseHelper.getJSONResponseString(str);
	
	}
	
	@Override
	public String getJSONDownloadingAppServ(TtServiceRequest searchDownloadApp)
	{
		TrackingHepler helper = new TrackingHepler();
		List<Object[]> lstdownloadingapp = trackingRepository.getJSONDownlodingAppListRepo(searchDownloadApp);
		Gson gson = new Gson();
		String str = gson.toJson(helper.getViewDownloadingAppDetails(lstdownloadingapp));
		return JsonResponseHelper.getJSONResponseString(str);
	}

}
