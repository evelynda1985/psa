package org.parentsstepahead.application.dao;

import java.util.List;

import org.parentsstepahead.application.entity.Parent;

public interface ParentDao {

	public List<Parent> getParents();

	public void saveParent(Parent theParent);

	public Parent getParent(int theId);

	public void deleteParent(int theId);

}
