package org.openmrs.module.oralhealthmodule.extension.html;
import org.openmrs.module.Extension;
import org.openmrs.module.web.extension.PatientDashboardTabExt;

public class OralHealthTab extends PatientDashboardTabExt {
/**
* @see org. openmrs . module .web. extension . PatientDashboardTabExt #
*/

	public Extension.MEDIA_TYPE getMediaType () {
		return Extension.MEDIA_TYPE.html ;
	}
	
	 @Override
	 public String getPortletUrl () {
		 return "OralHealthTab";
	 }
	
	 /**
	 * @see org. openmrs . module .web. extension . PatientDashboardTabExt # getTabId ()
	 */
	
	 @Override
	 public String getTabId () {
		 return "OralHealthAssessment";
	 }
	
	 /**
	 * @see org. openmrs . module .web. extension . PatientDashboardTabExt # getTabName
	 */
	
	 @Override
	 public String getTabName () {
		 return "Oral Health Assessment";
	 }
	
	 public String getRequiredPrivilege () {
		return "";
	 }

 }
