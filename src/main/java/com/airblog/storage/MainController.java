package com.airblog.storage;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class MainController {
    @GetMapping(value = { "/", "" })
    public String list(Model model) {
        return "index";
    }

    // Titlebar
    @GetMapping("/link/tasks")
    public String toPagesTasks(Model model) {
        return "redirect:/fruits";
    }
    @GetMapping("/link/bank")
    public String toPagesBank(Model model) {
        return "redirect:/bank";
    }
    @GetMapping("/link/clothes")
    public String toPagesClothes(Model model) {
        return "redirect:/clothes";
    }
    @GetMapping("/link/forum")
    public String toPagesForum(Model model) {
        return "redirect:/forum";
    }






    
}
