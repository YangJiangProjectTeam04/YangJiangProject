package com.teamRocket.controller;

import com.teamRocket.domain.Department;
import com.teamRocket.domain.User;
import com.teamRocket.service.DepartmentService;
import com.teamRocket.service.HomeService;
import com.teamRocket.utils.page.MINIBaseResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller("mainController")
public class MainController {

    /* 用于测试项目是否能进入启动页 */
    @RequestMapping(value = {"","/"})
    public String login(){
        return "login/login";
    }

    /*从登陆页面跳转到个人中心home界面*/
    @RequestMapping(value = "/home")
    public String home(){
        return "home/home";
    }


    @Resource
    private HomeService homeService;

    /* 申请人 */
    @RequestMapping(value = "/select_username")
    @ResponseBody
    public MINIBaseResult<User> select_username(User user, int pageIndex, int pageSize) {
        MINIBaseResult<User> baseResult = homeService.selectUserName(user, pageIndex, pageSize);
        return baseResult;
    }

}
