package com.teamRocket.service;

import com.teamRocket.utils.page.MINIBaseResult;
import com.teamRocket.domain.SatelliteLib;

/**
 * Created by bobbi on 18/2/8.
 */
public interface SatelliteLibService {

    /* 分页查询 */
    MINIBaseResult<SatelliteLib> select(SatelliteLib satelliteLib, int pageIndex, int pageSize);

    /* 插入 */
    int insert(SatelliteLib satelliteLib);

    /* 删除 */
    boolean delete(String storeName);
}
