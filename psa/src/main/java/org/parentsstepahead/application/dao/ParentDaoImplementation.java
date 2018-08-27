package org.parentsstepahead.application.dao;

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
		
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create a query sort it by last name
		Query<Parent> theQuery = currentSession.createQuery("from Parent order by lastName", Parent.class);
		
		//get the list result - of customers
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

}
