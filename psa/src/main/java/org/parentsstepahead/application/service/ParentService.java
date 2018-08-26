package org.parentsstepahead.application.service;

import java.util.List;

import org.parentsstepahead.application.entity.Parent;

public interface ParentService {

	public List<Parent> getParents();

	public void saveParent(Parent theParent);

}
