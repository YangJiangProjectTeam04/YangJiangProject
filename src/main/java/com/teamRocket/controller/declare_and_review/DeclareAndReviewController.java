package com.teamRocket.controller.declare_and_review;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/6.
 */
@Controller
public class DeclareAndReviewController {

    /*部门经理审批页面*/
    @RequiresRoles("manager")
    @RequiresPermissions("user:*")
    @RequestMapping(value = "/declareAndReview")
    public String declare() {
        return "declare_and_review/declareAndReview";
    }
    @RequestMapping(value = "/bridgeDeclare")
    public String bridge() {
        return "declare_and_review/bridgeDeclare";
    }

    /*科技办经理审批页面*/
    @RequiresRoles("admin")
    @RequiresPermissions("user:*")
    @RequestMapping(value = "/scienceMangerReview")
    public String bridgeReview() {
        return "declare_and_review/scienceMangerReview";
    }
    @RequiresRoles("admin")
    @RequiresPermissions("user:*")
    @RequestMapping(value = "/bridgeManager")
    public String bridgeManager() {
        return "declare_and_review/bridgeManager";
    }

    /*工程师审批页面*/
    @RequestMapping(value = "/bridgeEngineerReview")
    public String bridgeEngineerReview() {
        return "declare_and_review/bridgeEngineerReview";
    }
    @RequestMapping(value = "/engineerReview")
    public String engineerReview() {
        return "declare_and_review/engineerReview";
    }

    /*总经理审批页面*/
    @RequestMapping(value = "/bridgeGM")
    public String bridgeGM() {
        return "declare_and_review/bridgeGM";
    }
    @RequestMapping(value = "/GMApprove")
    public String GMApprove() {
        return "declare_and_review/GMApprove";
    }

    /*评审小组评审页面*/
    @RequestMapping(value = "/bridgeReviewTeam")
    public String bridgeReviewTeam() {
        return "declare_and_review/bridgeReviewTeam";
    }
    @RequestMapping(value = "/reviewTeam")
    public String reviewTeam() {
        return "declare_and_review/reviewTeam";
    }

}
