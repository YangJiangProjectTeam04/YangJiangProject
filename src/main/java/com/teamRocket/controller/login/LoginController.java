package com.teamRocket.controller.login;

import com.teamRocket.domain.BaseResult;
import com.teamRocket.domain.User;
import com.teamRocket.service.LoginService;
import com.teamRocket.service.TRException;
import com.teamRocket.utils.TRStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by dllo on 18/2/3.
 */
@Controller("loginController")
public class LoginController  {

    @Resource
    private LoginService loginService;

    /* 登录判断方法 */
    @RequestMapping(value = "/loginHome", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult home(@RequestBody User user){

        //空值判断
        if(!TRStringUtils.regular(user.getLoginName())){

            return new BaseResult(1,"用户名或邮箱不能为空");

        }

        //同步邮箱
        user.setEmail(user.getLoginName());

        try {

            //开始查询
            loginService.findUser(user);

        //处理自定义异常
        } catch (TRException e) {

            return new BaseResult(2,e.getMessage());

        }

        return new BaseResult(0,"成功");

    }

    /* 判断用户名是否存在于表中 */
    @RequestMapping(value = "/userPass", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult<User> loginNamePass(@RequestBody User user){

        //同步邮箱
        user.setEmail(user.getLoginName());

        return loginService.findUsername(user);

    }

    /* 判断邮箱验证 */
    @RequestMapping(value = "/emailPass", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult emailPass(@RequestBody User user, HttpServletRequest request){

        try {

            String code = loginService.findEmail(user);

            request.getSession(true).setAttribute("emailCode", code);

        } catch (TRException e) {

            return new BaseResult(1,e.getMessage());

        } catch (MessagingException e) {

            return new BaseResult(1,"消息发送错误");

        } catch (IOException e) {

            return new BaseResult(1,"消息流异常");

        }

        return new BaseResult(0,"邮箱正确");

    }



}
