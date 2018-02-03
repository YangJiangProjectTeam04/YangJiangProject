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

}
