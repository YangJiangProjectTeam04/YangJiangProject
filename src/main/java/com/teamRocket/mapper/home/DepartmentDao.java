package com.teamRocket.mapper.home;

import com.teamRocket.domain.Department;
import com.teamRocket.domain.User;
import com.teamRocket.mapper.BaseDao;
import com.teamRocket.utils.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
//所属部门
public interface DepartmentDao extends BaseDao<Department> {
    //    List<Department> findAll();
    List<Department> findAll(PageBean<Department> pageBean);

    Integer getTotal(Department department);
}
