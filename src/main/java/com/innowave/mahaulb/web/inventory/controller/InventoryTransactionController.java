package com.innowave.mahaulb.web.inventory.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.innowave.mahaulb.common.dao.master.TmCmDepartment;
import com.innowave.mahaulb.common.repository.TmCmDepartmentRepo;
import com.innowave.mahaulb.common.repository.TmUlbMasterRepo;
import com.innowave.mahaulb.common.service.beans.UserBean;
import com.innowave.mahaulb.repository.inventory.dao.master.TmInvStore;
import com.innowave.mahaulb.repository.inventory.repo.MaterialTypeRepo;
import com.innowave.mahaulb.repository.inventory.repo.MaterialTypeStoreMappingRepository;
import com.innowave.mahaulb.service.inventory.dto.master.InventoryMaterialMappingForm;
import com.innowave.mahaulb.service.inventory.dto.master.MaterialTypeMappingDTO;

@Controller
@RequestMapping("/inventory/transactions")
public class InventoryTransactionController {
	
	
	@Autowired
	private MessageSource messageSource;

	@Autowired
	private HttpSession httpSession;

	@Autowired
	private MaterialTypeStoreMappingRepository mappingRepository;

	@Autowired
	private MaterialTypeRepo materialTypeRepository;

	@Autowired
	private TmCmDepartmentRepo depRepo;
	
	@Autowired
	private TmUlbMasterRepo ulbMasterRepo;
	
	

	private String departmentSelected;

	private String storeSelected;

	private final String prefixURL = "inventory/transactions";

	public UserBean getSessionUser() {
		// Session session = sessionFactory.getCurrentSession();
		return (UserBean) httpSession.getAttribute("userBeanObj");
	}

	@RequestMapping(value = "/searchdisposalofscrap", method = RequestMethod.GET)
    public String searchdisposalofscrap(Locale locale,ModelMap model,HttpServletRequest req){
		
	    return prefixURL+"/master-search-disposal-of-scrap-material";
    }
	
	@RequestMapping(value = "/searchpurchaseorder", method = RequestMethod.GET)
    public String searchpurchaseorder(Locale locale,ModelMap model,HttpServletRequest req){
		
	    return prefixURL+"/master-search-purchase-order";
    }
	
	@RequestMapping(value = "/searchscrapwriteoffprocess", method = RequestMethod.GET)
    public String searchscrapwriteoffprocess(Locale locale,ModelMap model,HttpServletRequest req){
		
	    return prefixURL+"/master-search-scrap-write-off-process";
    }
	
	@RequestMapping(value = "/adddisposalofscrap", method = RequestMethod.GET)
    public String adddisposalofscrap(Locale locale,ModelMap model,HttpServletRequest req){
		
	    return prefixURL+"/master-add-disposal-of-scrap-material";
    }
	
	@RequestMapping(value = "/addpurchaseorder", method = RequestMethod.GET)
    public String addpurchaseorder(Locale locale,ModelMap model,HttpServletRequest req){
		
	    return prefixURL+"/master-add-purchase-order";
    }
	
	@RequestMapping(value = "/addscrapwriteoffprocess", method = RequestMethod.GET)
    public String addscrapwriteoffprocess(Locale locale,ModelMap model,HttpServletRequest req){
		
	    return prefixURL+"/master-add-scrap-write-off-process";
    }

}
