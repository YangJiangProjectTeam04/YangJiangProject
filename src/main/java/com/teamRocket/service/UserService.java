package com.teamRocket.service;

import com.teamRocket.domain.User;

import java.util.List;
import java.util.Set;

/**
 * Created by dllo on 18/2/28.
 */
public interface UserService {

    List<User> selNameAndPassword(User user);

    /*根据登录名搜索*/
    User selectByloginName(String loginName);

    /*获得角色名字*/
    Set<String> getRoles(String loginName);

    /*获得角色权限*/
    Set<String> getPermissions(String loginName);
}
