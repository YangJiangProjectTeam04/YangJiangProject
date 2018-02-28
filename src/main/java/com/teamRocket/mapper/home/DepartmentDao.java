package com.teamRocket.mapper.home;

import com.teamRocket.domain.Department;
import com.teamRocket.mapper.BaseDao;

import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
//所属部门
public interface DepartmentDao extends BaseDao<Department> {
    List<Department> findAll();
}
