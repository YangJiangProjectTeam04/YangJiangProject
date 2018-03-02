package com.teamRocket.service.impl;

import com.teamRocket.utils.TRStringUtils;
import com.teamRocket.utils.page.MINIBaseResult;
import com.teamRocket.domain.SatelliteLib;
import com.teamRocket.mapper.satellite_lib.SatelliteLibDao;
import com.teamRocket.service.SatelliteLibService;
import com.teamRocket.utils.page.PageBean;
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

    /* 分页查询 */
    @Override
    public MINIBaseResult<SatelliteLib> select(SatelliteLib satelliteLib, int pageIndex, int pageSize) {
        MINIBaseResult<SatelliteLib> result = new MINIBaseResult<SatelliteLib>();
        int total = satelliteLibDao.getTotal(satelliteLib);

        PageBean<SatelliteLib> pageBean = new PageBean<SatelliteLib>(pageIndex + 1, pageSize, total);
        pageBean.setParameter(satelliteLib);
        List<SatelliteLib> satelliteLibs = satelliteLibDao.select(pageBean);

        result.setTotal(total);
        result.setData(satelliteLibs);

        return result;
    }

    /* 插入 */
    @Override
    public int insert(SatelliteLib satelliteLib) {

        // 判断卫星库是否存在
        SatelliteLib s = satelliteLibDao.findOne(satelliteLib);
        System.out.println(s);

        if (s == null) {
            // 重新设置 是否有效
            if (satelliteLib.getEffectFlag().equals("1")) {
                satelliteLib.setEffectFlag("Y");
            } else {
                satelliteLib.setEffectFlag("N");
            }

            // 设置UUID
            satelliteLib.setBIMSStoreId(TRStringUtils.getUUID());

            // 判断是否成功插入
            int flag = satelliteLibDao.insert(satelliteLib);
            if (flag > 0) {
                return 0;
            }
            return -1;
        }
        return 1;
    }

    /* 删除 */
    @Override
    public boolean delete(String storeName) {
        // 判断是否成功删除
        int flag = satelliteLibDao.delete(storeName);

        if (flag != 0) {
            return true;
        } else {
            return false;
        }
    }


}
