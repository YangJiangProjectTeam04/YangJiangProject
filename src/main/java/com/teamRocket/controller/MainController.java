package com.teamRocket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    /* 用于测试项目是否能进入启动页 */
    @RequestMapping(value = {"","/"})
    public String home(){

        return "index";

    }

}
