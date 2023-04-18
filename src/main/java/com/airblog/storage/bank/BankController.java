package com.airblog.storage.bank;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/bank")
public class BankController {
    @GetMapping(value = { "/", "" })
    public String getTasks(Model model) {
        return "/pages/bank";
    }

}
