package com.teamRocket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("mainController")
public class MainController {

    /* 用于测试项目是否能进入启动页 */
    @RequestMapping(value = {"","/"})
    public String login(){
        return "researchProject/bridgePersonalWorkbench";
    }

    /*从登陆页面跳转到个人中心home界面*/
    @RequestMapping(value = "/home")
    public String home(){
        return "home/home";
    }

}
