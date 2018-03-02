package com.teamRocket.mapper;

import com.teamRocket.utils.page.PageBean;

import java.util.List;

public interface BaseDao<T> {

    /* 获取查询条数 */
    Integer getTotal(T t);

    /* 查询所有 */
    List<T> findAll();

    /* 分页查询 */
    List<T> select(PageBean<T> pageBean);

    /* 查询单个 */
    T findOne(T t);

    /* 插入数据 */
    int insert(T t);

    /* 删除数据 */
    int delete(String s);

}
