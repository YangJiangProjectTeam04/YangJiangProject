package com.teamRocket.controller.login;

import com.teamRocket.domain.BaseResult;
import com.teamRocket.domain.CodeMessage;
import com.teamRocket.domain.User;
import com.teamRocket.service.LoginService;
import com.teamRocket.service.TRException;
import com.teamRocket.utils.TRStringUtils;
import net.sf.json.JSONObject;
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
public class LoginController {

    @Resource
    private LoginService loginService;
    private String code;

    /* 登录判断方法 */
    @RequestMapping(value = "/loginHome", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult home(@RequestBody User user) {

        //空值判断
        if (!TRStringUtils.regular(user.getLoginName())) {

            return new BaseResult(1, "用户名或邮箱不能为空");

        }

        //同步邮箱
        user.setEmail(user.getLoginName());

        //同步手机
        user.setPhoneNumber(user.getLoginName());

        try {

            //开始查询
            loginService.findUser(user);

            //处理自定义异常
        } catch (TRException e) {

            return new BaseResult(2, e.getMessage());

        }

        return new BaseResult(0, "成功");

    }

    /* 判断用户名是否存在于表中 */
    @RequestMapping(value = "/userPass", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult<User> loginNamePass(@RequestBody User user) {

        //同步邮箱
        user.setEmail(user.getLoginName());

        //同步手机
        user.setPhoneNumber(user.getLoginName());

        return loginService.findUsername(user);

    }

    /* 判断邮箱验证 */
    @RequestMapping(value = "/emailPass", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult emailPass(@RequestBody User user, HttpServletRequest request) {
        try {

            code = loginService.findEmail(user);

            request.getSession().setAttribute("emailCode", code);

        } catch (TRException e) {

            return new BaseResult(1, e.getMessage());

        } catch (MessagingException e) {

            return new BaseResult(1, "消息发送错误");

        } catch (IOException e) {

            return new BaseResult(1, "消息流异常");

        }

        return new BaseResult(0, code);

    }

    //邮箱验证码验证
    @RequestMapping(value = "/getEmailCode", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult getEmailCode(@RequestBody User user,HttpServletRequest request) {

        String code = (String) request.getSession(true).getAttribute("emailCode");

        try {

            loginService.codePass(user.getEmail());

            if (code.equals(user.getEmail().trim())){

                return new BaseResult(0,"成功");

            }

        } catch (TRException e) {

            return new BaseResult(1, e.getMessage());

        }

        return new BaseResult(1, "验证码不正确");

    }

    /* 发送短信验证码 */
    @RequestMapping(value = "/phonePass", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult phoneMessagePass(@RequestBody User user, HttpServletRequest request){

        try {

            String codeBody = loginService.findPhone(user);

            //编译JSON对象
            CodeMessage codeMessage = (CodeMessage) JSONObject.toBean(
                    JSONObject.fromObject(codeBody),CodeMessage.class);

            request.getSession().setAttribute("phoneCode", codeMessage.getObj());

            System.out.println(codeMessage);

        } catch (TRException e) {

            return new BaseResult(1, e.getMessage());

        } catch (IOException e) {

            return new BaseResult(1, "消息流异常");

        }

        return new BaseResult(0, code);

    }

    /* 短信验证码验证 */
    @RequestMapping(value = "/getPhoneCode", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult getPhoneCode(@RequestBody User user,HttpServletRequest request){

        String code = (String) request.getSession(true).getAttribute("phoneCode");

        try {

            loginService.codePass(user.getPhoneNumber());

            if (code.equals(user.getPhoneNumber().trim())){

                return new BaseResult(0,"成功");

            }

        } catch (TRException e) {

            return new BaseResult(1, e.getMessage());

        }

        return new BaseResult(1, "验证码不正确");

    }

}
