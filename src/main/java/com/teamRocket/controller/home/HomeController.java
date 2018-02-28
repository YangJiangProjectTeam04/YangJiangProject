package com.teamRocket.controller.home;

import com.teamRocket.domain.Department;
import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.domain.User;
import com.teamRocket.service.DepartmentService;
import com.teamRocket.service.HomeService;
import com.teamRocket.utils.page.MINIBaseResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/3.
 */
@Controller("homeController")
public class HomeController {

    /* 个人中心 */
    @RequestMapping(value = "/person")
    public String homeJumpPerson() {
        return "home/person";
    }

    @RequestMapping(value = "/bridge")
    public String bridge() {
        return "home/bridge";
    }

    @RequestMapping(value = "/project_base")
    public String project_base() {
        return "home/project_base";
    }

    @RequestMapping(value = "/project_other")
    public String project_other() {
        return "home/project_other";
    }

    /* 部门选择窗口 */
    @RequestMapping(value = "/select_department_gridwindow")
    public String select_department_gridwindow() {
        return "home/select_department_gridwindow";
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
