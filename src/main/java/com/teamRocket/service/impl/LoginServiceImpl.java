package com.teamRocket.service.impl;

import com.teamRocket.domain.BaseResult;
import com.teamRocket.domain.User;
import com.teamRocket.mapper.login.UserDao;
import com.teamRocket.service.LoginService;
import com.teamRocket.service.TRException;
import com.teamRocket.utils.CheckSumBuilder;
import com.teamRocket.utils.HttpClientUtil;
import com.teamRocket.utils.mail.Mail;
import com.teamRocket.utils.mail.MailUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.Session;
import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

    @Resource
    private UserDao userDao;

    public User findUser(User user) throws TRException {

        //进行密码md5加密
        String passwordEncode = CheckSumBuilder.getMD5(user.getPassword());

        //重置密码
        user.setPassword(passwordEncode);

        List<User> users = userDao.selNameAndPassword(user);

        if (users == null || users.size() < 1) {

            throw new TRException("用户名密码不匹配");

        }
        return users.get(0);

    }

    public BaseResult<User> findUsername(User user) {

        List<User> users = userDao.selUsername(user);

        BaseResult<User> result = new BaseResult<User>();

        if (users == null || users.size() < 1) {

            result.setResultCode(1);

            if (regEmail(user.getEmail())) {

                result.setResultMsg("邮箱错误");

            } else if(regPhone(user.getEmail())){

                result.setResultMsg("手机错误");

            } else {

                result.setResultMsg("用户错误");

            }

        } else {

            result.setResultCode(0);

            if (regEmail(user.getEmail())) {

                result.setResultMsg("邮箱正确");

            } else if(regPhone(user.getEmail())){

                result.setResultMsg("手机正确");

            } else {

                result.setResultMsg("用户正确");

            }

        }

        return result;
    }

    public String findPhone(User user) throws TRException, IOException {

        if (!regPhone(user.getPhoneNumber())) {

            throw new TRException("手机号格式不正确");

        }


        List<User> users = userDao.selPhone(user);

        if (users == null || users.size() < 1) {

            throw new TRException("手机号未注册");

        }

        //对该号码发送手机短信
       return HttpClientUtil.sendMessage(user.getPhoneNumber());

    }

    public String findEmail(User user) throws TRException, IOException, MessagingException {

        if (!regEmail(user.getEmail())) {

            throw new TRException("邮箱格式不正确");

        }


        List<User> users = userDao.selEmail(user);

        if (users == null || users.size() < 1) {

            throw new TRException("邮箱未注册");

        }

        String msg = "<p>用户:" + users.get(0).getUsername() + ",正在登录</p>";

        return sendEmail(user.getEmail(), msg);

    }

    public void codePass(String code) throws TRException {

        if (code.trim().length() != 4 && code.trim().length() != 5){

            throw new TRException("验证码长度不正确");

        }

    }

    //手机正则判断
    private boolean regPhone(String str) {

        String regEx = "^((13[0-9])|(15[^4])|(18[0-9])|(17[0-9])|(147))\\d{8}$";

        Pattern pattern = Pattern.compile(regEx);

        Matcher matcher = pattern.matcher(str);

        return matcher.find();
    }

    //邮箱正则判断
    private boolean regEmail(String str) {

        String regEx = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";

        Pattern pattern = Pattern.compile(regEx);

        Matcher matcher = pattern.matcher(str);

        return matcher.find();
    }

    /* 推送邮件方法 */
    private String sendEmail(String email, String msg) throws IOException, MessagingException {

        String nonce = getNonce() + "";

        Session session = MailUtils.createSession("smtp.163.com", "shidifenniya@163.com", "19970731SDB");

        String from = "shidifenniya@163.com";

        String to = email;

        String subject = "邮箱验证";

        String content = "<h2>" + nonce + "</h2>";

        String content2 = "<p>邮箱验证码,仅用于邮箱登录验证 power by TeamRocket</p>";

        Mail mail = new Mail(from, to, subject, content + msg + content2);

        MailUtils.send(session, mail);

        return nonce;

    }

    /* 获取4位验证码 */
    private int getNonce() {

        return (int) Math.rint((Math.random() * 10000 + 1000));

    }


}
