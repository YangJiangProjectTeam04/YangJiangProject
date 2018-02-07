package com.teamRocket.mapper;

import java.util.List;

public interface BaseDao<T> {

    List<T> findAll();

    int insert(T t);

    T findOne(T t);

}
