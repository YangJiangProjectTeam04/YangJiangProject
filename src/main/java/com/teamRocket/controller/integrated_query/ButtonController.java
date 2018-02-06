package com.teamRocket.controller.integrated_query;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bobbi on 18/2/5.
 */
@Controller
public class ButtonController {

    /*综合查询*/
    @RequestMapping(value = "/bridgeIntegrated")
    public String bridge(){
        return "integrated_management/bridgeIntegrated";
    }
    @RequestMapping(value = "/integrated_query")
    public String integratedQuery(){
        return "integrated_management/integrated_query";
    }
    /*射线探伤人员管理*/
    @RequestMapping(value = "/bridgeRayManagement")
    public String bridgeRayManagement(){
        return "integrated_management/bridgeRayManagement";
    }
    @RequestMapping(value = "/rayManagement")
    public String rayManagement(){
        return "integrated_management/rayManagement";
    }

    /*厂房管理*/
    @RequestMapping(value = "/bridgeWorkshopManagement")
    public String bridgeWorkshopManagement(){
        return "integrated_management/bridgeWorkshopManagement";
    }
    @RequestMapping(value = "/workshopManagement")
    public String workshopManagement(){
        return "integrated_management/workshopManagement";
    }

}
