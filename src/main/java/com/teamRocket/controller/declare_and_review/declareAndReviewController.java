package com.teamRocket.controller.declare_and_review;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/6.
 */
@Controller
public class DeclareAndReviewController {

    /*部门经理审批页面*/
    @RequestMapping(value = "/declareAndReview")
    public String declare() {
        return "declare_and_review/declareAndReview";
    }
    @RequestMapping(value = "/bridgeDeclare")
    public String bridge() {
        return "declare_and_review/bridgeDeclare";
    }

    /*科技办经理审批页面*/
    @RequestMapping(value = "/scienceMangerReview")
    public String bridgeReview() {
        return "declare_and_review/scienceMangerReview";
    }
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

}
