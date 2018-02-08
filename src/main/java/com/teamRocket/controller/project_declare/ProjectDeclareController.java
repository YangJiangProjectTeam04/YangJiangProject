package com.teamRocket.controller.project_declare;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bobbi on 18/2/6.
 */
@Controller
public class ProjectDeclareController {

    /* 科研项目申报 */
    @RequestMapping(value = "/project_baseMsg")
    public String project_baseMsg() {
        return "project_declare/project_baseMsg";
    }
    @RequestMapping(value = "/projectDeclare")
    public String projectDeclare() {
        return "project_declare/projectDeclare";
    }
    @RequestMapping(value = "/project_otherMsg")
    public String project_otherMsg() {
        return "project_declare/project_otherMsg";
    }
}