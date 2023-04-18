package com.airblog.storage;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class MainController {
    @GetMapping("/")
    public String list(Model model) {
        return "index";
    }
    
}
