package com.teamRocket.service.impl;

import com.teamRocket.domain.BaseResult;
import com.teamRocket.domain.User;
import com.teamRocket.mapper.login.UserDao;
import com.teamRocket.service.LoginService;
import com.teamRocket.service.TRException;
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

    public void findUser(User user) throws TRException {

        List<User> users = userDao.selNameAndPassword(user);

        if(users == null || users.size() < 1){

            throw new TRException("用户名密码不匹配");

        }

    }

    public BaseResult<User> findUsername(User user) {

        List<User> users = userDao.selUsername(user);

        BaseResult<User> result = new BaseResult<User>();

        if (users == null || users.size() < 1){

            result.setResultCode(1);

            if(regEmail(user.getEmail())){

                result.setResultMsg("邮箱错误");

            } else {

                result.setResultMsg("用户错误");

            }

        }else {

            result.setResultCode(0);

            if(regEmail(user.getEmail())){

                result.setResultMsg("邮箱正确");

            } else {

                result.setResultMsg("用户正确");

            }

        }

        return result;
    }

    public String findEmail(User user) throws TRException, IOException, MessagingException {

        List<User> users = userDao.selEmail(user);

        if (users == null || users.size() < 1){

            throw new TRException("邮箱未注册");

        }

        String msg = "<p>用户:"+ users.get(0).getUsername() +",正在登录</p>";

        return sendEmail(user.getEmail(), msg);

    }

    //邮箱正则判断
    private boolean regEmail(String str){

        String regEx = "[a-zA-Z_]{1,}[0-9]{0,}@(([a-zA-z0-9]-*){1,}\\.){1,3}[a-zA-z\\-]{1,}";

        Pattern pattern = Pattern.compile(regEx);

        Matcher matcher = pattern.matcher(str);

        return matcher.find();
    }

    /* 推送邮件方法 */
    private String sendEmail(String email,String msg) throws IOException, MessagingException {

        String nonce = getNonce() + "";

        Session session = MailUtils.createSession("smtp.163.com","shidifenniya@163.com","19970731SDB");

        String from = "shidifenniya@163.com";

        String to = email;

        String subject = "邮箱验证";

        String content = "<h2>" + nonce + "</h2>";

        String content2 = "<p>邮箱验证码,仅用于邮箱登录验证 power by TeamRocket</p>";

        Mail mail = new Mail(from,to,subject, content + msg + content2);

        MailUtils.send(session,mail);

        return nonce;

    }

    /* 获取4位验证码 */
    private int getNonce(){

        return (int) Math.rint((Math.random()*10000 + 1000));

    }


}
