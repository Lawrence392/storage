package com.airblog.storage.calculator;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {
    @GetMapping(value = { "/", "" })
    public String getTasks(Model model) {
        return "/pages/calculator";
    }

}
