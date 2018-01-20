package com.innowave.mahaulb.mahaweb.tracking.rest.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;
import com.innowave.mahaulb.common.dao.trans.TtServiceRequest;
import com.innowave.mahaulb.mahaweb.tracking.rest.service.TrackingService;

@RestController
@RequestMapping("/tracking/rest")
public class TrackingRestController

{
	public static final Logger logger = LoggerFactory.getLogger(TrackingRestController.class);
	
		@Autowired
		TrackingService trackingService;
		
		@RequestMapping(value = "/search/knowtracking", headers = "Accept=application/json", method = RequestMethod.POST)
		public ResponseEntity<String> addProduct(@RequestHeader HttpHeaders headers,@RequestBody TtServiceRequest searchDto,UriComponentsBuilder ucBuilder) 
		
		{
			System.out.println("controller tracking"+searchDto.getSrNumber());
			System.out.println("ulbid--"+searchDto.getUlbId());
			try {
				String resJson = "";
			
				resJson = trackingService.getJSONTrackingListServ(searchDto);
				
				logger.error(" resJson "+ resJson);
				return ResponseEntity.ok(resJson);
			} catch (Exception e) {
				logger.error("SEARCH TRACKING ", e);
				return ResponseEntity.ok(e.getMessage());
			}
		}
		
		
		
		@RequestMapping(value="//search/knowdownloading",headers="Accept=application/json",method=RequestMethod.POST)
		public ResponseEntity<String> searchDownloadingApp(@RequestHeader HttpHeaders headers,@RequestBody TtServiceRequest searchDownloadApp,UriComponentsBuilder ucComBuilder)
		{	try
			{
				String resJson="";
				resJson=trackingService.getJSONDownloadingAppServ(searchDownloadApp);
				logger.error("resJson"+resJson);
				return ResponseEntity.ok(resJson);
			}
			catch (Exception e) {
				logger.error("Search Downloading App"+e);
				return ResponseEntity.ok(e.getMessage());
			}
		}
		
		
	}



