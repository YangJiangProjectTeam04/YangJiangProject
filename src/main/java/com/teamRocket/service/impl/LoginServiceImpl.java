package com.teamRocket.service.impl;

import com.teamRocket.domain.BaseResult;
import com.teamRocket.domain.User;
import com.teamRocket.mapper.login.UserDao;
import com.teamRocket.service.LoginService;
import com.teamRocket.service.TRException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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

    //邮箱正则判断
    private boolean regEmail(String str){

        String regEx = "[a-zA-Z_]{1,}[0-9]{0,}@(([a-zA-z0-9]-*){1,}\\.){1,3}[a-zA-z\\-]{1,}";

        Pattern pattern = Pattern.compile(regEx);

        Matcher matcher = pattern.matcher(str);

        return matcher.find();
    }



}
