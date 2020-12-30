package com.kaikenov.spring.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

    @RequestMapping("/")
    public String getInfoForAllEmployees() {
        return "view-for-all-employees";
    }

    @RequestMapping("/hr-info")
    public String getInfoForHREmployees() {
        return "view-for-hr";
    }

    @RequestMapping("/manager-info")
    public String getInfoForManagers() {
        return "view-for-managers";
    }
}
