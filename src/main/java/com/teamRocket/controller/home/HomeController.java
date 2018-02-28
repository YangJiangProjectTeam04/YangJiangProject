package com.teamRocket.controller.home;
import com.teamRocket.domain.User;
import com.teamRocket.service.HomeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/3.
 */
@Controller("homeController")
public class HomeController {

    /* 个人中心 */
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

    /* 个人工作平台页面,点击申请人进入用户查询界面*/
    @RequestMapping(value = "/select_user_gridwindow")
    public String select_user_gridwindow(){
        return "home/select_user_gridwindow";
    }


    @Resource
    private HomeService homeService;
    /* 申请人 */
    @RequestMapping(value = "/select_username")
    @ResponseBody
    public List<User> listUser(){
        return homeService.userName();
    }
}
