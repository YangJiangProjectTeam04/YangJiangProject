package com.teamRocket.controller;

import com.teamRocket.domain.Department;
import com.teamRocket.service.DepartmentService;
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
    private DepartmentService departmentService;

    /* 设置所属部门 */
    @RequestMapping(value = "/select_depart")
    @ResponseBody
    public MINIBaseResult<Department> select_depart(Department department, int pageIndex, int pageSize) {
        MINIBaseResult<Department> baseResult = departmentService.findAll(department,pageIndex,pageSize);
        return baseResult;
    }

}
