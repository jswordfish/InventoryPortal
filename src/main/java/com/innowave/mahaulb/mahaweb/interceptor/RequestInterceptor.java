package com.innowave.mahaulb.mahaweb.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.innowave.mahaulb.common.service.beans.UserBean;







@Component
public class RequestInterceptor extends HandlerInterceptorAdapter {

	@Override
	 public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object object) throws Exception {
		
		HttpSession session = request.getSession();
		// ignore login page
		System.out.println("*** "+request.getServletPath());
        if (request.getServletPath().equals("/index") ) { 
        	System.out.println("------------");
        	// BEWARE : to be adapted to your actual login page
        	return true;
        }
        else if(request.getServletPath().equals("/water/rest/search/knowwater") || 
        		request.getServletPath().equals("/water/rest/search/waterconn") ||
        		request.getServletPath().equals("/water/rest/search/waterPayNoDue") ||
        		request.getServletPath().equals("/water/view/search/selectConn") ||
        		request.getServletPath().equals("/water/rest/search/waterServiceCharges") ||
        		request.getServletPath().equals("/water/rest/search/waterPayDue") ||
        		request.getServletPath().equals("/water/rest/send/waterPaymentGateway") ||
        		request.getServletPath().equals("/water/send/waterPayMoney") ||
        		request.getServletPath().equals("/water/paymentResponse") ||
        		request.getServletPath().equals("/property/paymentNoDueResponse") ||
        		request.getServletPath().equals("/water/paymentNoDueResponse") ||
        		request.getServletPath().equals("/water/rest/search/waterPayNoDue") ||
        		request.getServletPath().equals("/water/rest/send/waterPayMoneyForNoDue") ||
        		request.getServletPath().equals("/water/view/search") ||
        		request.getServletPath().equals("/property/rest/search/propertytypeT") ||
        		request.getServletPath().equals("/property/rest/getDuesOnPropTypeT") ||
        		request.getServletPath().equals("/property/rest/getChargesForProperty") ||
        		request.getServletPath().equals("/property/rest/paymentForPropertyNoDues") ||
        		request.getServletPath().equals("/property/rest/send/propertyPaymentGateway") ||
        		request.getServletPath().equals("/property/view/search/selectPropertyNO") ||
        		request.getServletPath().equals("/property/view/searchPropDetail") ||
        		request.getServletPath().equals("/property/rest/getFlatsDetailsOnPropertyNo") ||
        		
        		request.getServletPath().equals("/water/js/water.min.js")) {
        	System.out.println("--------7777---");
        	return true;
        } 
        UserBean userBean = (UserBean) session.getAttribute("userBeanObj");
        if(userBean == null)
        {
            response.sendRedirect(request.getContextPath() + "/");
            return false;
        }
        else
        {
            return true;
        }
		/*System.out.println("In preHandle we are Intercepting the Request");
		System.out.println("____________________________________________");
		String requestURI = request.getRequestURI();
		Integer personId = ServletRequestUtils.getIntParameter(request, "personId", 0);
		System.out.println("RequestURI::" + requestURI + 
				" || Search for Person with personId ::" + personId);
		System.out.println("____________________________________________");*/
		//return true;
	 }

	 @Override
	 public void postHandle(HttpServletRequest request, HttpServletResponse response, 
			Object object, ModelAndView model)
			throws Exception {
		/*System.out.println("_________________________________________");
		System.out.println("In postHandle request processing "
				+ "completed by @RestController");
		System.out.println("_________________________________________");*/
	 }

	 @Override
	 public void afterCompletion(HttpServletRequest request, HttpServletResponse response, 
			Object object, Exception arg3)
			throws Exception {
		/*System.out.println("________________________________________");
		System.out.println("In afterCompletion Request Completed");
		System.out.println("________________________________________");*/
	 }
}
