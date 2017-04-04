package org.openmrs.module.oralhealthmodule.web.controller;

import org.openmrs.web.controller.PortletController;
import org.openmrs.module.oralhealthmodule.api.OralHealthService;
import org.openmrs.module.oralhealthmodule.OralHealth;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.ui.ModelMap;
import org.openmrs.api.context.Context;
import org.openmrs.Patient;
import org.openmrs.api.PatientService;
import org.openmrs.Person;
import org.openmrs.api.PersonService;


import java.util.Map;
import javax.servlet.http.HttpServletRequest;


 /**
 * The main controller .
 */

@Controller
@RequestMapping (value="**/OralHealthTab.portlet", method = RequestMethod.GET)
 public class OralHealthTabController extends PortletController {
		
//    public void showOralHealthList(HttpServletRequest request, ModelMap model) {
    public void populateModel(HttpServletRequest request, ModelMap model) {
		model.addAttribute("patientAssessments", OralHealth.getService().getAllOralHealth());	
		//model.put("assessments", OralHealth.getService().getAllOralHealth());	
		
	    Integer patientId = Integer.parseInt(request.getParameter("patientId"));
	    Patient patient = getCurrentPatient(patientId);
	    model.addAttribute("patient",patient); 
		
		}
    
    	private Patient getCurrentPatient(Integer patientId) {
    		Patient p = null;
    		PatientService ps = Context.getPatientService();

    		try {
    			p = ps.getPatient(patientId);
    			} catch (Exception e) {
    				log.warn("Unable to retrieve patient with patientId: " + patientId, e);
    			}
    		
    		return p;
	    }		
    
    
    /** 
  protected void populateModel(HttpServletRequest request, Map<String, Object> model) {
  		model.addAttribute("assessments", OralHealth.getService().getAllOralHealth());
      
	public void showOralHealthList(ModelMap model) {
			model.addAttribute("assessments", OralHealth.getService().getAllOralHealth());	
	*/ 

		
 	//}

 }