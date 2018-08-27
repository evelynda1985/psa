package org.parentsstepahead.application.service;

import java.util.List;

import org.parentsstepahead.application.dao.ParentDao;
import org.parentsstepahead.application.entity.Parent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ParentServiceImplementation implements ParentService {
	
	@Autowired
	private ParentDao parentDao;


	@Override
	@Transactional //avoid to write session.begin and session.getCurrentSession.commit
	public List<Parent> getParents() {
		return parentDao.getParents();
	}

	@Override
	@Transactional
	public void saveParent(Parent theParent) {
		parentDao.saveParent(theParent);
		
	}

	@Override
	@Transactional
	public Parent getParent(int theId) {
		
		return parentDao.getParent(theId);
	}

	@Override
	@Transactional
	public void deleteParent(int theId) {
		
		parentDao.deleteParent(theId);
		
	}

}
