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
package org.openmrs.module.oralhealthmodule.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.oralhealthmodule.api.db.OralHealthDAO;
import org.openmrs.module.oralhealthmodule.OralHealth;
import java.util.List;

/**
 * It is a default implementation of  {@link OralHealthDAO}.
 */
public class HibernateOralHealthDAO implements OralHealthDAO {
	protected final Log log = LogFactory.getLog(this.getClass());
	private SessionFactory sessionFactory;
	
    public void setSessionFactory(SessionFactory sessionFactory) {
	    this.sessionFactory = sessionFactory;
    }
    
    public SessionFactory getSessionFactory() {
	    return sessionFactory;
    }
    
    @Override
    public List<OralHealth> getAllOralHealth() {
            return sessionFactory.getCurrentSession().createCriteria(OralHealth.class).list();
    }

    @Override
    public OralHealth getOralHealth(Integer oralHealthId) {
            return (OralHealth) sessionFactory.getCurrentSession().get(OralHealth.class, oralHealthId);
    }

    @Override
    public OralHealth saveOralHealth(OralHealth oralHealth) {
            sessionFactory.getCurrentSession().save(oralHealth);
            return oralHealth;
    }

    @Override
    public void purgeOralHealth(OralHealth oralHealth) {
            sessionFactory.getCurrentSession().delete(oralHealth);
    }
    
}