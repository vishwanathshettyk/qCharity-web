package com.quality.charity.web.controllers;

import com.quality.charity.web.FileWriter.WriteFeature;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class WelcomeController {

    @RequestMapping("/welcome")
    public String welcome() {
        return "homepage";
    }
}

