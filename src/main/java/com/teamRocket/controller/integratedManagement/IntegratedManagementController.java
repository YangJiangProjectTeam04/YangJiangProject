package com.teamRocket.controller.integratedManagement;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import com.teamRocket.domain.BaseResult;
import com.teamRocket.utils.page.MINIBaseResult;
import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.service.SatelliteLibService;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by bobbi on 18/2/7.
 */
@Controller
public class IntegratedManagementController {
    /*综合管理*/

    /*综合查询*/
    @RequestMapping(value = "/bridgeIntegrated")
    public String bridge() {
        return "integrated_management/bridgeIntegrated";
    }

    @RequestMapping(value = "/integrated_query")
    public String integratedQuery() {
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


    /*射线探伤人员管理*/
    @RequestMapping(value = "/bridgeRayManagement")
    public String bridgeRayManagement() {
        return "integrated_management/bridgeRayManagement";
    }

    @RequestMapping(value = "/rayManagement")
    public String rayManagement() {
        return "integrated_management/rayManagement";
    }

    /*厂房管理*/
    @RequestMapping(value = "/bridgeWorkshopManagement")
    public String bridgeWorkshopManagement() {
        return "integrated_management/bridgeWorkshopManagement";
    }

    @RequestMapping(value = "/workshopManagement")
    public String workshopManagement() {
        return "integrated_management/workshopManagement";
    }

    @RequestMapping(value = "/selectManager")
    public String selectManager() {
        return "integrated_management/select_bims_manager_gridwindow";
    }

    /* 查询 */
    @Resource
    private SatelliteLibService satelliteLibService;

    @RequestMapping(value = "/selectSatelliteLibs")
    @ResponseBody
    public MINIBaseResult<SatelliteLib> selectAllSatelliteLibs(SatelliteLib satelliteLib, int pageIndex, int pageSize) {
        MINIBaseResult<SatelliteLib> baseResult = satelliteLibService.select(satelliteLib, pageIndex, pageSize);
        return baseResult;
    }

    /* 增加 */
    @RequestMapping(value = "/satelliteInformation")
    public String satelliteInformation() {
        return "integrated_management/satelliteInformation";
    }


    @RequestMapping(value = "/insert")
    @ResponseBody
    public BaseResult insert(String data) {
        JSONObject object = JSONObject.fromObject(data);
        SatelliteLib satelliteLib = (SatelliteLib) JSONObject.toBean(object, SatelliteLib.class);
        boolean flag = satelliteLibService.insert(satelliteLib);
        if (flag) {
            return new BaseResult(0,"保存成功");
        } else {
            return new BaseResult(1,"保存失败");
        }

    }

}
