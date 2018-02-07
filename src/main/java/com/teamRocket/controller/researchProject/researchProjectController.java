package com.teamRocket.controller.researchProject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bobbi on 18/2/7.
 */
@Controller
public class researchProjectController {

    /*个人工作平台页面*/
    @RequestMapping(value = "/bridgePersonalWorkbench")
    public String bridgePersonalWorkbench() {
        return "researchProject/bridgePersonalWorkbench";
    }

    /*待办任务*/
    @RequestMapping(value = "/waitAssignment")
    public String waitAssignment() {
        return "researchProject/personalWorkbenchWait";
    }

    /*已办任务*/
    @RequestMapping(value = "/alreadyAssignment")
    public String alreadyAssignment() {
        return "researchProject/personalWorkbenchAlready";
    }

    /*合同推荐申报*/
    @RequestMapping(value = "/recommendingDeclaration")
    public String recommendingDeclaration() {
        return "researchProject/recommendingDeclaration";
    }

    /*合同推荐审批*/
    @RequestMapping(value = "/recommendingApprove")
    public String recommendingApprove() {
        return "researchProject/recommendingApprove";
    }


}
