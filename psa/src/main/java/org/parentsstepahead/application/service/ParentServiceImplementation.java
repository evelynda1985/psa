package org.parentsstepahead.application.service;

import java.util.ArrayList;
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
	@Transactional 
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

	@Override
	@Transactional
	public List<Parent> searchParents(String theSearchName) {
		return parentDao.searchParents(theSearchName);
	}

	@Override
	@Transactional
	public ArrayList<String> getIncomeOptions() {
		return parentDao.getIncomeOptions();
	}
	
	

}
