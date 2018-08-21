package org.parentsstepahead.application.registercontroller;

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

}
