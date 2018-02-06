package com.teamRocket.controller.project_declare;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bobbi on 18/2/6.
 */
@Controller
public class ProjectDeclareController {

    /*综合管理*/

    /*综合查询*/
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

    /*机组管理*/
    @RequestMapping(value = "/bridgeCrewManagement")
    public String bridgeCrewManagement() {
        return "integrated_management/bridgeCrewManagement";
    }
    @RequestMapping(value = "/crewManagement")
    public String crewManagement() {
        return "integrated_management/crewManagement";
    }

    /*卫星库管理人管理*/
    @RequestMapping(value = "/bridgeSatelliteManagement")
    public String bridgeSatelliteManagement() {
        return "integrated_management/bridgeSatelliteManagement";
    }
    @RequestMapping(value = "/satelliteManagement")
    public String satelliteManagement() {
        return "integrated_management/satelliteManagement";
    }

}
