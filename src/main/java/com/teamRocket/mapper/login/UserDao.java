package com.teamRocket.mapper.login;

import com.teamRocket.domain.User;
import com.teamRocket.mapper.BaseDao;

import java.util.List;
import java.util.Set;


public interface UserDao extends BaseDao<User> {

    List<User> selNameAndPassword(User user);

    List<User> selUsername(User user);

    List<User> selEmail(User user);

    List<User> selPhone(User user);

    /*根据登录名搜索*/
    User selectByloginName(String loginName);

    /*获得角色名字*/
    Set<String> getRoles(String loginName);

    /*获得角色权限*/
    Set<String> getPermissions(String loginName);


}
