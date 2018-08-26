package org.parentsstepahead.application.controller;

import java.util.List;

import org.parentsstepahead.application.entity.Parent;
import org.parentsstepahead.application.service.ParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ParentController {
	
	@Autowired 
	ParentService parentService;
	
	/*@GetMapping("/parentsList")
    public String getParentsList(){

        return "parentsList";

    }*/

	@GetMapping("/parentsList")
	public String getParentsList(Model theModel) {
		
		//get from the DAO
		List<Parent> theParent = parentService.getParents();
		
		//add customer to the service
		theModel.addAttribute("ParentsList", theParent);
		
		return "parentsList";
	}

}
