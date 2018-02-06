package com.teamRocket.controller.declare_and_review;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/6.
 */
@Controller
public class declareAndReviewController {

    /*部门经理审批页面*/
    @RequestMapping(value = "/declareAndReview")
    public String declare(){
        return "declare_and_review/declareAndReview";
    }
    @RequestMapping(value = "/bridgeDeclare")
    public String bridge(){
        return "declare_and_review/bridgeDeclare";
    }

    /*科技办经理审批页面*/
    @RequestMapping(value = "/scienceMangerReview")
    public String bridgeReview(){
        return "declare_and_review/scienceMangerReview";
    }
    @RequestMapping(value = "/bridgeManager")
    public String bridgeManager(){
        return "declare_and_review/bridgeManager";
    }

    /*科技办经理审批页面*/
    @RequestMapping(value = "/bridgeEngineerReview")
    public String bridgeEngineerReview(){
        return "declare_and_review/bridgeEngineerReview";
    }
    @RequestMapping(value = "/engineerReview")
    public String engineerReview(){
        return "declare_and_review/engineerReview";
    }



}
