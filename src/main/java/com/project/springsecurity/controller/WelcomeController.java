package com.project.springsecurity.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {
    @GetMapping(path = "/hi")
    public String welcome() {
        return "Welcome to Spring Application with Security";
    }
}
