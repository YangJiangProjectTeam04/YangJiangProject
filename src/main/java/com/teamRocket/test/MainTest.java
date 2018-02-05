package com.teamRocket.test;

import com.teamRocket.domain.User;
import com.teamRocket.mapper.login.UserDao;
import com.teamRocket.utils.TRStringUtils;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MainTest {

    private ApplicationContext context;

    @Before
    public void init(){

        context = new ClassPathXmlApplicationContext("classpath:spring-*.xml");

    }

//  测试数据库
    @Test
    public void startSpring(){

        UserDao userDao = context.getBean(UserDao.class);

        userDao.insert(new User(TRStringUtils.getUUID(),"波比",
                "qwer@uiop.com","bobbi","qwer"));

        List<User> users = userDao.findAll();

        System.out.println(users);

    }

}
