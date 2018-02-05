package com.teamRocket.service;

import com.teamRocket.domain.BaseResult;
import com.teamRocket.domain.User;

public interface LoginService {

    void findUser(User user) throws TRException;

    BaseResult<User> findUsername(User user);

}
