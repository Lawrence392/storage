package com.airblog.storage.clothes;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/clothes")
public class ClothesController {
    @GetMapping(value = { "/", "" })
    public String getTasks(Model model) {
        return "/pages/clothes";
    }

}
