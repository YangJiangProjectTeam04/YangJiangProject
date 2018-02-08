package com.teamRocket.service;

import com.teamRocket.domain.BaseResult;
import com.teamRocket.domain.User;

import javax.mail.MessagingException;
import java.io.IOException;

public interface LoginService {

    void findUser(User user) throws TRException;

    BaseResult<User> findUsername(User user);

    String findEmail(User user) throws TRException, IOException, MessagingException;

    void codePass(String code) throws TRException;

    String findPhone(User user) throws TRException, IOException;

}
