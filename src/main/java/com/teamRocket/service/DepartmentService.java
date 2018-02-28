package com.teamRocket.service;

import com.teamRocket.domain.Department;
import com.teamRocket.domain.User;
import com.teamRocket.utils.page.MINIBaseResult;

import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
public interface DepartmentService {
//    List<Department> findAll();
    MINIBaseResult<Department> findAll(Department department, int pageIndex, int pageSize);
}
