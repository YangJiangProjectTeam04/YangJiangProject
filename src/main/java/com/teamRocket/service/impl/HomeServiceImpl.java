package com.teamRocket.service.impl;

import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.domain.User;
import com.teamRocket.mapper.home.HomeDao;
import com.teamRocket.service.HomeService;
import com.teamRocket.utils.page.MINIBaseResult;
import com.teamRocket.utils.page.PageBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
@Service("homeService")
public class HomeServiceImpl implements HomeService {
    @Resource
    private HomeDao homeDao;

    @Override
    public MINIBaseResult<User> selectUserName(User user, int pageIndex, int pageSize) {
        MINIBaseResult<User> result = new MINIBaseResult<User>();
        int total = homeDao.getTotal(user);
        PageBean<User> pageBean = new PageBean<User>(pageIndex+1,pageSize,total);
        pageBean.setParameter(user);
        List<User> userList = homeDao.selectUserName(pageBean);

        result.setTotal(total);
        result.setData(userList);
        return result;
    }
}
