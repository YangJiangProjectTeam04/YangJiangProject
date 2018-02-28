package com.teamRocket.service.impl;

import com.teamRocket.domain.User;
import com.teamRocket.mapper.home.HomeDao;
import com.teamRocket.service.HomeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
@Service("homeServiceImpl")
public class HomeServiceImpl implements HomeService {
    @Resource
    private HomeDao homeDao;

    @Override
    public List<User> userName() {
        return homeDao.findUserName();
    }
}
