package org.parentsstepahead.application.controller;

import java.util.List;


import org.parentsstepahead.application.entity.Parent;
import org.parentsstepahead.application.service.ParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.apache.log4j.Logger;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ParentController {
	
	@Autowired 
	ParentService parentService;
	
	private static final Logger logger = Logger.getLogger(ParentController.class);
	
	@GetMapping("/parentsList")
	public String getParentsList(Model theModel) {
		
		logger.debug("I am working with LOG4J");
		List<Parent> theParent = parentService.getParents();
		
		theModel.addAttribute("ParentsList", theParent);
		
		return "parentsList";
	}
	
    @GetMapping("/registrationForm")
    public String showRegistrationForm(Model theModel){
    	
    	Parent theParent = new Parent();
    	theModel.addAttribute("parent", theParent);    	

        return "registrationForm";

    }
    
	@PostMapping("/saveParent")
	public String saveParent(@ModelAttribute("parent") Parent theParent) {
		
		parentService.saveParent(theParent);	
		
		return "redirect:/parentsList";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("idParent") int theId, Model theModel) {
		
		Parent theParent = parentService.getParent(theId);	
		
		theModel.addAttribute("parent", theParent);
				
		return "registrationForm";
	}
	
	@GetMapping("/delete")
	public String deleteParent(@RequestParam("idParent") int theId) {
		
		parentService.deleteParent(theId);
		
		return "redirect:/parentsList";
	}
	
	@PostMapping("/search")
    public String searchParents(@RequestParam("theSearchName") String theSearchName, Model theModel) {

        List<Parent> parentsList = parentService.searchParents(theSearchName);

        theModel.addAttribute("ParentsList", parentsList);

        return "parentsList";
	}
    

}
