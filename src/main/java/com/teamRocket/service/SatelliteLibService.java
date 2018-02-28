package com.teamRocket.service;

import com.teamRocket.utils.page.MINIBaseResult;
import com.teamRocket.domain.SatelliteLib;

/**
 * Created by bobbi on 18/2/8.
 */
public interface SatelliteLibService {
    MINIBaseResult<SatelliteLib> select(SatelliteLib satelliteLib, int pageIndex, int pageSize);
}
