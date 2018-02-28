package com.teamRocket.mapper.satellite_lib;

import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.mapper.BaseDao;
import com.teamRocket.utils.page.PageBean;

import java.util.List;

/**
 * Created by bobbi on 18/2/8.
 */
public interface SatelliteLibDao extends BaseDao<SatelliteLib> {
    /* 查询所有卫星库 */
    Integer getTotal(SatelliteLib satelliteLib);

    List<SatelliteLib> select(PageBean<SatelliteLib> pageBean);

}
