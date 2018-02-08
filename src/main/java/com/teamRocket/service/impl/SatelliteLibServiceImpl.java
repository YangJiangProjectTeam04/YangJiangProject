package com.teamRocket.service.impl;

import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.mapper.satellite_lib.SatelliteLibDao;
import com.teamRocket.service.SatelliteLibService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by bobbi on 18/2/8.
 */
@Service("satelliteLibService")
public class SatelliteLibServiceImpl implements SatelliteLibService {
    @Resource
    private SatelliteLibDao satelliteLibDao;
    @Override
    public List<SatelliteLib> selAll() {
        return satelliteLibDao.findAll();
    }
}
