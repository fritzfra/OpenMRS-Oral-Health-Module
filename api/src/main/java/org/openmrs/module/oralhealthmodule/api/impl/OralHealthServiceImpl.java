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
package org.openmrs.module.oralhealthmodule.api.impl;

import org.openmrs.api.impl.BaseOpenmrsService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.module.oralhealthmodule.api.OralHealthService;
import org.openmrs.module.oralhealthmodule.api.db.OralHealthDAO;
import org.openmrs.module.oralhealthmodule.OralHealth;
import java.util.List;

/**
 * It is a default implementation of {@link OralHealthService}.
 */
public class OralHealthServiceImpl extends BaseOpenmrsService implements OralHealthService {
	
	protected final Log log = LogFactory.getLog(this.getClass());
	
	private OralHealthDAO dao;
	
	/**
     * @param dao the dao to set
     */
    public void setDao(OralHealthDAO dao) {
	    this.dao = dao;
    }
    
    /**
     * @return the dao
     */
    public OralHealthDAO getDao() {
	    return dao;
    }
    
    @Override
    public List<OralHealth> getAllOralHealth() {
            return dao.getAllOralHealth();
    }

    @Override
    public OralHealth getOralHealth(Integer oralHealthId) {
        return dao.getOralHealth(oralHealthId);
    }

    @Override
    public OralHealth saveOralHealth(OralHealth oralHealth) {
            return dao.saveOralHealth(oralHealth);
    }

    @Override
    public void purgeOralHealth(OralHealth oralHealth) {
            dao.purgeOralHealth(oralHealth);
    }
    
}