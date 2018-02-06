package com.teamRocket.controller.declare_and_review;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/6.
 */
@Controller
public class declareAndReviewController {
    @RequestMapping(value = "/declareAndReview")
    public String declare(){
        return "declare_and_review/declareAndReview";
    }
    @RequestMapping(value = "/bridgeDeclare")
    public String bridge(){
        return "declare_and_review/bridgeDeclare";
    }
    @RequestMapping(value = "/scienceMangerReview")
    public String bridgeReview(){
        return "declare_and_review//scienceMangerReview";
    }
}
