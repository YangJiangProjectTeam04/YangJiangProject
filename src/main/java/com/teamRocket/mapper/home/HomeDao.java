package com.teamRocket.mapper.home;

import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.domain.User;
import com.teamRocket.mapper.BaseDao;
import com.teamRocket.utils.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/26.
 */
/*申请人,数据库中查询用户姓名*/
public interface HomeDao extends BaseDao<User> {
    List<User> selectUserName(PageBean<User> pageBean);
    Integer getTotal(User user);

}
