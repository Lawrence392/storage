package com.airblog.storage.forum;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/forum")
public class ForumController {
    @GetMapping(value = { "/", "" })
    public String getTasks(Model model) {
        return "/pages/forum";
    }

}
