package com.airblog.storage.chat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/chat")
public class ChatController {
    @GetMapping(value = { "/", "" })
    public String getTasks(Model model) {
        return "/pages/chat";
    }

}
