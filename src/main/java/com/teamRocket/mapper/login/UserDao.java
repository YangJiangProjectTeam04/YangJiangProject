package com.teamRocket.mapper.login;

import com.teamRocket.domain.User;
import com.teamRocket.mapper.BaseDao;

import java.util.List;


public interface UserDao extends BaseDao<User> {

    List<User> selNameAndPassword(User user);

    List<User> selUsername(User user);

    List<User> selEmail(User user);

}
