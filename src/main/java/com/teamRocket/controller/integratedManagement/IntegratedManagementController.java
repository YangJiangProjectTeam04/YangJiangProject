package com.teamRocket.controller.integratedManagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bobbi on 18/2/7.
 */
@Controller
public class IntegratedManagementController {
    /*综合管理*/

    /*综合查询*/
    @RequestMapping(value = "/bridgeIntegrated")
    public String bridge(){
        return "integrated_management/bridgeIntegrated";
    }
    @RequestMapping(value = "/integrated_query")
    public String integratedQuery(){
        return "integrated_management/integrated_query";
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
