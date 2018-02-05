package com.teamRocket.controller.home;

import com.teamRocket.domain.BaseResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by dllo on 18/2/3.
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/loginHome")
    @ResponseBody
    public BaseResult home(){
        return new BaseResult(0,"成功");
    }

    @RequestMapping(value = "/person")
    public String homeJumpPerson(){
        return "home/person";
    }
    @RequestMapping(value = "/bridge")
    public String bridge(){
        return "home/bridge";
    }
    @RequestMapping(value = "/project_base")
    public String project_base(){
        return "home/project_base";
    }
    @RequestMapping(value = "/project_other")
    public String project_other(){
        return "home/project_other";
    }

}
