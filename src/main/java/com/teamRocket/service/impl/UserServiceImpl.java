package com.teamRocket.service.impl;

import com.teamRocket.domain.User;
import com.teamRocket.mapper.login.UserDao;
import com.teamRocket.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

/**
 * Created by dllo on 18/2/28.
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;


    @Override
    public List<User> selNameAndPassword(User user) {
        return userDao.selNameAndPassword(user);
    }

    /*根据登录名查*/
    @Override
    public User selectByloginName(String loginName) {
        return userDao.selectByloginName(loginName);
    }

    /*角色*/
    @Override
    public Set<String> getRoles(String loginName) {
        return userDao.getRoles(loginName);
    }

    /*权限*/
    @Override
    public Set<String> getPermissions(String loginName) {
        return userDao.getPermissions(loginName);
    }
}
