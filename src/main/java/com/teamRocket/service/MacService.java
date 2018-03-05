package com.teamRocket.service;

import com.teamRocket.domain.Mac;
import com.teamRocket.utils.page.MINIBaseResult;

/**
 * Created by bobbi on 18/3/1.
 */
public interface MacService {

    /* 分页查询 */
    MINIBaseResult<Mac> select(Mac mac, int pageIndex, int pageSize);

    /* 插入 */
    int insert(Mac mac);

    /* 删除 */
    boolean delete(String name);
}
