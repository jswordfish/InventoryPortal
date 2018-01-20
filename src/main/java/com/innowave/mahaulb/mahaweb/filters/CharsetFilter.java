package com.innowave.mahaulb.mahaweb.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/*
 * @Author Ashok Parmar
 * 
 */

@Component
//@Order(1)
//@WebFilter(urlPatterns = {"/*" })
public class CharsetFilter implements Filter{

	private static final String UTF8 = "UTF-8";  
	   private static final String CONTENT_TYPE = "text/html; charset=UTF-8";  
	   private String encoding;
	   
	private final static Logger LOGGER = LoggerFactory.getLogger(CharsetFilter.class);
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		 LOGGER.info("############ Into CharsetFilter");
		 encoding = filterConfig.getInitParameter("requestCharEncoding");  
	     if (encoding == null) {  
	       encoding = UTF8;  
	     }
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		if (null == request.getCharacterEncoding()) {  
		       request.setCharacterEncoding(encoding);  
		}  
		response.setContentType(CONTENT_TYPE);  
	     response.setCharacterEncoding(UTF8);  
	     chain.doFilter(request, response); 
		
	}

	@Override
	public void destroy() {
		LOGGER.warn("############ Destory CharsetFilter");
	}

}
