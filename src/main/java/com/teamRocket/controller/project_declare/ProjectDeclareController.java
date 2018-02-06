package com.teamRocket.controller.project_declare;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bobbi on 18/2/6.
 */
@Controller
public class ProjectDeclareController {

    @RequestMapping(value = "/project_baseMsg")
    public String project_baseMsg() {
        return "project_declare/project_baseMsg";
    }

    @RequestMapping(value = "/project_otherMsg")
    public String project_otherMsg() {
        return "project_declare/project_otherMsg";
    }

    @RequestMapping(value = "/project_home")
    public String project_home() {
        return "project_declare/project_home";
    }

}