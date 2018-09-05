package org.parentsstepahead.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/")
public class RegisterController {
	
    @GetMapping("/login")
    public String showHome(){

        return "login";
    }
    
    @GetMapping("/registrationForm2")
    public String showRegistrationForm2(){

        return "registrationForm2";
    }
    
    @GetMapping("/childrenInformation")
    public String showChildrenInformation(){

        return "childrenInformation";
    }
    
    @GetMapping("/childForm")
    public String showChildForm(){

        return "childForm";
    }
    
    @GetMapping("/forgotPassword")
    public String showForgotPasswordForm(){

        return "forgotPassword";
    }
    
    @GetMapping("/resetPassword")
    public String showResetPasswordForm(){
    	
        return "resetPassword";
    }
    
    @GetMapping("/homeApp")
    public String showHomeApp(){

        return "homeApp";
    }
    
}
