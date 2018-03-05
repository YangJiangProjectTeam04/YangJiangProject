package com.teamRocket.controller.integratedManagement;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import com.teamRocket.domain.BaseResult;
import com.teamRocket.domain.Mac;
import com.teamRocket.service.MacService;
import com.teamRocket.utils.page.MINIBaseResult;
import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.service.SatelliteLibService;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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

    @RequestMapping(value = "/macInformation")
    public String macInformation() {
        return "integrated_management/macInformation";
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

    @RequestMapping(value = "/satelliteInformation")
    public String satelliteInformation() {
        return "integrated_management/satelliteInformation";
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

    /* 卫星库操作 */
    @Resource
    private SatelliteLibService satelliteLibService;

    /* 查询卫星库 */
    @RequestMapping(value = "/selectSatelliteLibs")
    @ResponseBody
    public MINIBaseResult<SatelliteLib> selectSatelliteLibs(SatelliteLib satelliteLib, int pageIndex, int pageSize) {
        MINIBaseResult<SatelliteLib> baseResult = satelliteLibService.select(satelliteLib, pageIndex, pageSize);
        System.out.println(baseResult);
        return baseResult;
    }

    /* 增加卫星库 */
    @RequestMapping(value = "/insertSatelliteLib")
    @ResponseBody
    public BaseResult insertSatelliteLib(String data, String date) {
        JSONObject object = JSONObject.fromObject(data);
        SatelliteLib satelliteLib = (SatelliteLib) JSONObject.toBean(object, SatelliteLib.class);

        // 重新设置日期
        satelliteLib.setCreateDate(date);

        int flag = satelliteLibService.insert(satelliteLib);

        // 判断是否成功保存
        if (flag == 0) {
            return new BaseResult(0, "保存成功");
        } else if (flag == 1) {
            return new BaseResult(1, "卫星库已存在");
        } else {
            return new BaseResult(2, "保存失败");
        }
    }

    /* 删除卫星库 */
    @RequestMapping(value = "/deleteSatelliteLib")
    @ResponseBody
    public BaseResult deleteSatelliteLib(String name) {

        boolean flag = satelliteLibService.delete(name);
        if (flag) {
            return new BaseResult(1, "已删除");
        }
        return new BaseResult(2, "发生错误");
    }

    /*机组操作*/
    @Resource
    private MacService macService;

    /* 查询 */
    @RequestMapping(value = "/selectMacs")
    @ResponseBody
    public MINIBaseResult<Mac> selectMacs(Mac mac, int pageIndex, int pageSize) {
        MINIBaseResult<Mac> baseResult = macService.select(mac, pageIndex, pageSize);
        return baseResult;
    }

    /* 增加 */
    @RequestMapping(value = "/insertMac")
    @ResponseBody
    public BaseResult insertMac(String data, String date) {
        JSONObject object = JSONObject.fromObject(data);
        Mac mac = (Mac) JSONObject.toBean(object, Mac.class);

        mac.setCreateDate(date);

        int flag = macService.insert(mac);

        // 判断
        if (flag == 0) {
            return new BaseResult(0, "保存成功");
        } else if (flag == 1) {
            return new BaseResult(1, "机组已存在");
        } else {
            return new BaseResult(2, "保存失败");
        }
    }

    /* 删除 */
    @RequestMapping(value = "/deleteMac")
    @ResponseBody
    public BaseResult deleteMac(String name) {
        boolean flag = macService.delete(name);

        if (flag) {
            return new BaseResult(1, "已删除");
        }
        return new BaseResult(2, "发生错误");
    }

}
