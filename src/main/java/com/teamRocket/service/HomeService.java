package com.teamRocket.service;

import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.domain.User;
import com.teamRocket.utils.page.MINIBaseResult;

import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
public interface HomeService {
    //查询分页
    MINIBaseResult<User> selectUserName(User user, int pageIndex, int pageSize);


}
