package org.chinamerp.survey;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/admin")
    public String adminHome(Principal principal, Model model) {
        model.addAttribute("username", principal.getName());
        return "view.admin";
    }
	
	@RequestMapping({"/template/{template}.dust.js", "/template/{template}.dust"})
    public String getAddTemplate(@PathVariable String template) {
        return "template." + template;
    }
}
