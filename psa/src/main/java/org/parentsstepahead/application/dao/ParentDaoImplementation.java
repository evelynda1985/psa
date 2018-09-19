package org.parentsstepahead.application.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.parentsstepahead.application.entity.Parent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository 
public class ParentDaoImplementation implements ParentDao {
	
	@Autowired 
	private SessionFactory sessionFactory;


	@Override
	public List<Parent> getParents() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Parent> theQuery = currentSession.createQuery("from Parent order by lastName", Parent.class);
		
		List<Parent> parentsList = theQuery.getResultList();
		
		return parentsList;
	}

	@Override
	public void saveParent(Parent theParent) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theParent);
		
	}

	@Override
	public Parent getParent(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		Parent theParent = currentSession.get(Parent.class, theId);
		
		return theParent;
	}

	@Override
	public void deleteParent(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Parent theParent = currentSession.get(Parent.class, theId);
		currentSession.delete(theParent);
	}

	@Override
	public List<Parent> searchParents(String theSearchName) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = null;
		
		if (theSearchName != null && theSearchName.trim().length() > 0) {
            theQuery = currentSession.createQuery("from Parent where lower(firstName) like :theName or lower(lastName) like :theName", Parent.class);
            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
        }
        else {	
            theQuery = currentSession.createQuery("from Parent", Parent.class);            
        } 
        List<Parent> parentsList = theQuery.getResultList();
                      		 
		return parentsList;
	}

	@Override
	public ArrayList<String> getIncomeOptions() {
		Parent parent = new Parent();
		ArrayList<String> incomeOptions = parent.getIncomeOptions();
		 return incomeOptions;
	}
	

}