package com.innowave.mahaulb.mahaweb.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.innowave.mahaulb.common.dto.ModuleSearchDto;
import com.innowave.mahaulb.common.dto.TmModuleMasterForm;
import com.innowave.mahaulb.common.service.beans.UserBean;










@Controller
@RequestMapping("/")
public class HomeController {
	
	
	//@Autowired
	//EmailSenderService emailSenderService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private final static String  PATH = "/home/";
		
	@RequestMapping(method = RequestMethod.GET)
    public ModelAndView index(Locale locale,ModelMap model){
      //  return "index";
		//CitizenMasterMasForm citizenName = new CitizenMasterMasForm();
		//model.addAttribute("citizenMaster",citizenName);
		
	/*	SendEmailBean sendEmailBean = new SendEmailBean();
		sendEmailBean.setFrom("imhulbproject@gmail.com");
		sendEmailBean.setTo("parmar.ashok@gmail.com");
		sendEmailBean.setSubject("JavaMailSender");
		sendEmailBean.setBody("Just-Testing!");
 */
		//emailSenderService.sendHTMLEmail(sendEmailBean);
		
		return new ModelAndView("homepage",model,HttpStatus.OK);
        //return "index-1";
    }
	
	/*@RequestMapping(value = "/employee", method = { RequestMethod.GET, RequestMethod.POST })
    public String index1(Locale locale,ModelMap model){
		 return "index";
    }*/
	@RequestMapping(value = "/home", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView home(HttpSession session,Locale locale,ModelMap model){
		 
		if(session.getAttribute("userBeanObj") != null) {
			UserBean userBeanObj = (UserBean) session.getAttribute("userBeanObj");
			session.setAttribute("userBeanObj", userBeanObj);
			if(userBeanObj.getStrUserType().equals("CIZ")) {
				return new ModelAndView("redirect:/citizen/home");
			}else if(userBeanObj.getStrUserType().equals("USR")) {
				return new ModelAndView("redirect:/employee/home");
			}else if(userBeanObj.getStrUserType().equals("AGN")) {
				return new ModelAndView("redirect:/citizen/home");
			}
		} 
	
		return new ModelAndView("redirect:/");
		 
	}
	
	@RequestMapping(value = "/employee/home", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView employeeHome(HttpSession session,Locale locale,ModelMap model){
		if(session.getAttribute("userBeanObj") != null) {
			//return new ModelAndView(PATH+"employee-dashboard",model,HttpStatus.OK);
			return new ModelAndView("index",model,HttpStatus.OK);
		}
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST})
    public ModelAndView logout(HttpSession session,Locale locale,ModelMap model){
		 
		session.removeAttribute("userBeanObj");
		return new ModelAndView("index-1",model,HttpStatus.OK);
		 
    }
	@RequestMapping(value="/denied")
    public String denied(){
	 return "redirect:/error/403.jsp"; 
    }
    
    @RequestMapping(value="/invalidSession")
    public String invalidSession(){
        return "denied";
    }
    
 // for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {
		return new ModelAndView("error/403");
	}
	
	
	@RequestMapping(value = "/registration/registrationapp", method = RequestMethod.GET)
    public String applicationRegistration(Locale locale,ModelMap model){
		/*CitizenMasterMasForm citizenName = new CitizenMasterMasForm();
		 model.addAttribute("citizenMaster",citizenName);*/
	    return "registration/registration-application";
    }
	
	
	@RequestMapping(value = "/registration/employeeregistration", method = RequestMethod.GET)
    public String viewEmpReg(Locale locale,ModelMap model){
	    return "employee/employee-registration";
    }
	
	@RequestMapping(value = "/registration/propertyregistration", method = RequestMethod.GET)
    public String viewPropertyRegistration(Locale locale,ModelMap model){
	    return "property/view-registration-property";
    }
	
	@RequestMapping(value = "/service/servicereqapplication", method = RequestMethod.GET)
    public String viewPrpertyCollection(Locale locale,ModelMap model){
	    return "application/view-service-request";
    }
	
	@RequestMapping(value = "/dmadashboard", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView dmaDashboard(Locale locale,ModelMap model){
		 model.addAttribute("local",locale.toString());
		return new ModelAndView("home/dma-dashboard",model,HttpStatus.OK);
		//return "";
	}
	@RequestMapping(value = "/master/module", method = RequestMethod.GET)
    public ModelAndView viewCommonModuleMaster(Locale locale,ModelMap model){
		model.addAttribute("moduleMasterForm", new TmModuleMasterForm());
		model.addAttribute("moduleModSearchDto",new ModuleSearchDto());
		return new ModelAndView("module/view-module",model);  
    }
	
	@RequestMapping(value = "/scrutinyquestionmaster", method = RequestMethod.GET)
    public String viewscrutinyquestion(Locale locale,ModelMap model){
	    return "scrutiny/master/scrutinyquestionmaster";
    }
	
	@RequestMapping(value = "/noc", method = RequestMethod.GET)
    public String nocService(Locale locale,ModelMap model){
	    return "common/maha-dma/noc";
    }
	
	@RequestMapping(value = "/transferlic", method = RequestMethod.GET)
    public String TransferLicenseService(Locale locale,ModelMap model){
	    return "common/maha-dma/transfer-of-license";
    }
	
	@RequestMapping(value = "/treesurveyapp", method = RequestMethod.GET)
    public String TreesurveyAppService(Locale locale,ModelMap model){
	    return "common/maha-dma/service-treesurvey-application";
    }
	
	@RequestMapping(value = "/transferprop", method = RequestMethod.GET)
    public String TransferPropertyService(Locale locale,ModelMap model){
	    return "common/maha-dma/property-transfer";
    }
	
	@RequestMapping(value = "/exemptionproperty", method = RequestMethod.GET)
    public String exemptionPropert(Locale locale,ModelMap model){
	    return "common/maha-dma/exemptionfor-vacancy";
    }
	
	@RequestMapping(value = "/renewal", method = RequestMethod.GET)
    public String renewalTradelic(Locale locale,ModelMap model){
	    return "common/maha-dma/renewal-tradelic";
    }
	
	@RequestMapping(value = "/reconnection", method = RequestMethod.GET)
    public String reconnectionWater(Locale locale,ModelMap model){
	    return "common/maha-dma/service-reconnection";
    }
	
	@RequestMapping(value = "/changeconnusage", method = RequestMethod.GET)
    public String changeconnectionUsage(Locale locale,ModelMap model){
	    return "common/maha-dma/service-change-usageconn";
    }
	
	@RequestMapping(value = "/property/transaction/assessment", method = RequestMethod.GET)
    public String propertyAssessment(Locale locale,ModelMap model){
		/*CitizenMasterMasForm citizenName = new CitizenMasterMasForm();
		 model.addAttribute("citizenMaster",citizenName);*/
	    return "property/transaction/view-property-assessment";
    }
	
	@RequestMapping(value = "/newtrade", method = RequestMethod.GET)
    public String newtrade(Locale locale,ModelMap model){
	    return "market/newtrade-license";
    }
	
	@RequestMapping(value = "scrutiny/scrutinyprocess", method = { RequestMethod.GET, RequestMethod.POST })
    public String scrutinyProcess(Locale locale,ModelMap model){
		
		 return "scrutiny/process/scrutiny-process";
	}
	
	@RequestMapping(value = "scrutiny/scrutiny-details", method = { RequestMethod.GET, RequestMethod.POST })
    public String scrutinyDetails(Locale locale,ModelMap model){
		
		 return "scrutiny/process/scrutiny-details";
	}
	
	@RequestMapping(value = "/property-transfer", method = RequestMethod.GET)
    public String propertyService(Locale locale,ModelMap model){
	    return "common/maha-dma/property-transfer";
    }
	
	@RequestMapping(value = "/viewreceipt", method = RequestMethod.GET)
    public String viewreceipt(Locale locale,ModelMap model){
     return "water/receipt/view-dis-receipt";
    }
	
	@RequestMapping(value = "/addrolemaster", method = RequestMethod.GET)
    public String viewAddRole(Locale locale,ModelMap model){
     return "master/common/view-add-role";
    }
	@RequestMapping(value = "/searchrolemaster", method = RequestMethod.GET)
    public String viewSearchRole(Locale locale,ModelMap model){
     return "master/common/view-search-role";
    }
	
	@RequestMapping(value = "/addmenumaster", method = RequestMethod.GET)
    public String viewAddMenu(Locale locale,ModelMap model){
     return "master/common/view-add-menu";
    }
	
	@RequestMapping(value = "/searchmenumaster", method = RequestMethod.GET)
    public String viewSearchMenu(Locale locale,ModelMap model){
     return "master/common/view-search-menu";
    }
	
	@RequestMapping(value = "/searchrolemenumapping", method = RequestMethod.GET)
    public String viewSearchRoleMenuMapping(Locale locale,ModelMap model){
     return "master/common/view-search-role-menu";
    }
	
	@RequestMapping(value = "/addrolemenumapping", method = RequestMethod.GET)
    public String viewAddRoleMenuMapping(Locale locale,ModelMap model){
     return "master/common/view-add-role-menu";
    }
	
	@RequestMapping(value = "/searchuserrole", method = RequestMethod.GET)
    public String viewSearchUserRoleMapping(Locale locale,ModelMap model){
     return "master/common/view-search-userrole";
    }
	
	@RequestMapping(value = "/adduserrole", method = RequestMethod.GET)
    public String viewAddUserRoleMapping(Locale locale,ModelMap model){
     return "master/common/view-add-userrole";
    }

	@RequestMapping(value = "/setrelation", method = RequestMethod.GET)
    public String setRelation(Locale locale,ModelMap model){
     return "home/set-relationship";
    }
	
	@RequestMapping(value = "/serviceonline", method = RequestMethod.GET)
    public String ServiceOnline(Locale locale,ModelMap model){
	    return "common/maha-dma/service-online-pay";
    }
	

	
}
