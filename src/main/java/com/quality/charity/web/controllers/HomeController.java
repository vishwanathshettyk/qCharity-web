package com.quality.charity.web.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/home")
    public String index() {
        return "Greetings from Spring Boot!";
    }

}
