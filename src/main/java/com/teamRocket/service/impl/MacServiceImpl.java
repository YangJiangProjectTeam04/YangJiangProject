package com.teamRocket.service.impl;

import com.teamRocket.domain.Mac;
import com.teamRocket.mapper.mac.MacDao;
import com.teamRocket.service.MacService;
import com.teamRocket.utils.TRStringUtils;
import com.teamRocket.utils.page.MINIBaseResult;
import com.teamRocket.utils.page.PageBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by bobbi on 18/3/1.
 */
@Service("macService")
public class MacServiceImpl implements MacService {
    @Resource
    private MacDao dao;

    /* 分页查询 */
    @Override
    public MINIBaseResult<Mac> select(Mac mac, int pageIndex, int pageSize) {
        MINIBaseResult<Mac> result = new MINIBaseResult<Mac>();
        int total = dao.getTotal(mac);

        PageBean<Mac> pageBean = new PageBean<Mac>(pageIndex + 1, pageSize, total);
        pageBean.setParameter(mac);
        List<Mac> macs = dao.select(pageBean);

        result.setTotal(total);
        result.setData(macs);

        return result;
    }

    /* 插入 */
    @Override
    public int insert(Mac mac) {

        // 判断卫星库是否存在
        Mac m = dao.findOne(mac);

        if (m == null) {
            // 重新设置 是否有效
            if (mac.getEffectFlag().equals("1")) {
                mac.setEffectFlag("Y");
            } else {
                mac.setEffectFlag("N");
            }

            // 设置UUID
            mac.setId(TRStringUtils.getUUID());

            // 判断是否成功插入
            int flag = dao.insert(mac);
            if (flag > 0) {
                return 0;
            }
            return -1;
        }
        return 1;
    }

    /* 删除 */
    @Override
    public boolean delete(String name) {
        // 判断是否成功删除
        int flag = dao.delete(name);

        if (flag != 0) {
            return true;
        } else {
            return false;
        }
    }
}
