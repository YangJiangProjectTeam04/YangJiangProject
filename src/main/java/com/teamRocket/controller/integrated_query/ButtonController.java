package com.teamRocket.controller.integrated_query;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bobbi on 18/2/5.
 */
@Controller
public class ButtonController {
    @RequestMapping(value = "/bridgeIntegrated")
    public String bridge(){
        return "integrated_management/bridgeIntegrated";
    }
    @RequestMapping(value = "/integrated_query")
    public String integratedQuery(){
        return "integrated_management/integrated_query";
    }
}
