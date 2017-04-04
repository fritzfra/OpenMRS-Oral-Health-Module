/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.oralhealthmodule.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.messagesource.MessageSourceService;
import org.openmrs.api.context.Context;
import org.openmrs.web.WebConstants;
import org.openmrs.module.oralhealthmodule.api.OralHealthService;
import org.openmrs.module.oralhealthmodule.OralHealth;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.context.request.WebRequest;
import org.springframework.validation.BindingResult;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import org.openmrs.Form;
import java.lang.reflect.Method;


/**
 * The main controller.
 */
@Controller
public class  OralHealthManageController {
	
	protected final Log log = LogFactory.getLog(getClass());
	
	@RequestMapping(value = "/module/oralhealthmodule/manage", method = RequestMethod.GET)
	public void manage(ModelMap model) {
		model.addAttribute("user", Context.getAuthenticatedUser());
	}
	
	@RequestMapping(value = "/module/oralhealthmodule/oralHealthList", method = RequestMethod.GET)
	public void showOralHealthList(ModelMap model) {
		model.addAttribute("assessments", OralHealth.getService().getAllOralHealth());	
	}

    @ModelAttribute("oralHealth")
    OralHealth formBackingObject(@RequestParam(value="id", required=false) Integer id) {
    	if (id != null) {
    		OralHealth oh = OralHealth.getService().getOralHealth(id);
            return oh;
        } else {
        	OralHealth oh = new OralHealth();
        	oh.setForm(new Form());
        	return oh;
        }
    }
	
	@RequestMapping(value="/module/oralhealthmodule/addOralHealth", method=RequestMethod.GET)
	public void showOralHealth(ModelMap model,
                             HttpSession httpSession,
	                         @ModelAttribute("oralHealth") OralHealth oralHealth)
	                          {
			OralHealth oh = (OralHealth) model.get("oralHealth");
			
			String pnt = oh.getPatientNameText();
			String pn = "";
			if(pnt != null) {
				if(pnt.charAt(0) == '[' && pnt.charAt(pnt.length()-1)==']'){
					pn = pnt.substring(1, pnt.length()-1);
				}
				oh.setPatientName(pn);
			}			
			
			String bdt = oh.getBirthdateText();
			if(bdt != null) {
				try{
			    DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
			    Date result =  df.parse(bdt);  
				oh.setPatientBirthdate(result);
				}
				catch(Exception ex)
				{
    				log.warn("Birthdate not a valid date.", ex);
				}
			}
			
	}
	
	
	@RequestMapping(value="/module/oralhealthmodule/addOralHealth", method=RequestMethod.POST)
	  public String saveOralHealth(WebRequest request, HttpSession httpSession, ModelMap model,
              @RequestParam(required = false, value = "action") String action,
              @ModelAttribute("oralHealth") OralHealth oralHealth, BindingResult errors) {

		MessageSourceService mss = Context.getMessageSourceService();
		
		OralHealthService oralHealthService = Context.getService(OralHealthService.class);
		
		if (!Context.isAuthenticated()) {
	//		errors.reject("oralHealth.auth.required");
			httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "oralHealth.auth.required");

		} 
		else if (mss.getMessage("oralHealth.purgeOralHealth").equals(action)) {
			try {
				oralHealthService.purgeOralHealth(oralHealth);
				httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "oralHealth.delete.success");
				//return "redirect:oralHealthList.list";
				}
			catch (Exception ex) {
				httpSession.setAttribute(WebConstants.OPENMRS_ERROR_ATTR, "oralHealth.delete.failure");
				//log.error("Failed to delete oralHealth", ex);
				httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "oralHealth.delete.failure");
				//return "redirect:oralHealthForm.form?oralHealthId=" + request.getParameter("oralHealthId");
				}
		} 
		else {
			oralHealthService.saveOralHealth(oralHealth);
			httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "oralHealth.saved");
			
			OralHealth oh = (OralHealth) model.get("oralHealth");
			Integer pId = oh.getPatientId();
			if(pId != null) {
				String redirect = "redirect:/patientDashboard.form?patientId=" + pId;
				return redirect;

			}
			else {
				return "redirect:oralHealthList.form";
			}
		}	
		return "redirect:addOralHealth.form";
	} 
	
	@RequestMapping(value="/module/oralhealthmodule/deleteOralHealth", method={RequestMethod.GET, RequestMethod.POST})
	  public String deleteOralHealth(@RequestParam(required = false, value = "action") String action,
            @ModelAttribute("oralHealth") OralHealth oralHealth, BindingResult errors) {
			OralHealthService oralHealthService = Context.getService(OralHealthService.class);
			oralHealthService.purgeOralHealth(oralHealth);
			return "redirect:oralHealthList.form";
	}
	
	/**@RequestMapping(value="/module/oralhealthmodule/calculateTreatmentSummary", method={RequestMethod.GET, RequestMethod.POST})
	  public String calcTreatSum(ModelMap model, HttpSession httpSession,
			  @RequestParam(required = false, value = "action") String action,
			  @ModelAttribute("oralHealth") OralHealth oralHealth, BindingResult errors) {
		
		OralHealth oh = (OralHealth) model.get("oralHealth");
	    int noOfF=0;
	    int noOfEX=0;
	    int noOfRTC=0;
	    String currValue = "";
	    
	    for(Method m : oh.getClass().getMethods()){
	    	if (m.getName().startsWith("getTreatment") && m.getParameterTypes().length == 0) {
	    		try{
	    			final Object r = m.invoke(oh);
	    			currValue = (String)r;
	    			
	    			if(currValue.charAt(0) =='F'){
	    				noOfF++;
	    			}
	    			else if(currValue.charAt(0)=='R') {
	    				noOfRTC++;
	    			}
	    			else if(currValue.charAt(0)=='E') {
	    				noOfEX++;
	    			}
	    		}
	    		catch(Exception ex){
	    		}
	    	}
	    	oh.setTreatSumFilling(noOfF);
	    	oh.setTreatSumExtraction(noOfEX);
	    	oh.setTreatSumRTC(noOfRTC);
	    	

	    }
		//OralHealthService oralHealthService = Context.getService(OralHealthService.class);
		//oralHealthService.saveOralHealth(oralHealth);
		//httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "oralHealth.saved");

	    String redirect = "redirect:addOralHealth.form?id=" + oh.getOralHealthId();
		return redirect;

	}*/
}
	