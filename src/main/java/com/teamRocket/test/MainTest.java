package com.teamRocket.test;

import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.domain.User;
import com.teamRocket.mapper.login.UserDao;
import com.teamRocket.mapper.satellite_lib.SatelliteLibDao;
import com.teamRocket.service.SatelliteLibService;
import com.teamRocket.utils.TRStringUtils;
import com.teamRocket.utils.mail.Mail;
import com.teamRocket.utils.mail.MailUtils;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.mail.MessagingException;
import javax.mail.Session;
import java.io.IOException;
import java.util.List;

public class MainTest {

    private ApplicationContext context;

    @Before
    public void init() {

        context = new ClassPathXmlApplicationContext("classpath:spring-*.xml");

    }

    //  测试数据库
    @Test
    public void startSpring() {

        UserDao userDao = context.getBean(UserDao.class);

        User user = new User();

        user.setEmail("shidifenniya@gmail.com");

        List<User> users = userDao.selEmail(user);

        System.out.println(users);

    }

    //  测试邮件借口
    @Test
    public void sendEmail() {

//        try {
//
//            sendEmail("shidifenniya@gmail.com","<p>shidifenniya用户正在登录<p>", getNonce() + "");
//
//            System.out.println("邮件发送完成");
//
//        } catch (IOException e) {
//
//            e.printStackTrace();
//
//        } catch (MessagingException e) {
//
//            e.printStackTrace();
//
//        }

    }

    /* 推送邮件方法 */
//    private void sendEmail(String email,String msg,String random) throws IOException, MessagingException {
//
//        Session session = MailUtils.createSession("smtp.163.com","shidifenniya@163.com","19970731SDB");
//
//        String from = "shidifenniya@163.com";
//
//        String to = email;
//
//        String subject = "邮箱验证";
//
//        String content = "<h2>" + random + "</h2>";
//
//        String content2 = "<p>邮箱验证码,仅用于邮箱登录验证 power by TeamRocket</p>";
//
//        Mail mail = new Mail(from,to,subject, content + msg + content2);
//
//        MailUtils.send(session,mail);
//
//    }

    /* 获取4位验证码 */
    private static int getNonce() {

        return (int) Math.rint((Math.random() * 10000 + 1000));

    }

    /**
     * 卫星库查询测试
     * */
    @Test
    public void testSatelliteLib() {
        SatelliteLibService satelliteLibService = context.getBean(SatelliteLibService.class);
        List<SatelliteLib> satelliteLibs = satelliteLibService.selAll();
        for (SatelliteLib satelliteLib : satelliteLibs) {
            System.out.println(satelliteLib);
        }
    }
}
