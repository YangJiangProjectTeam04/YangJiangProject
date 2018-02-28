package com.teamRocket.service.impl;

import com.teamRocket.domain.Department;
import com.teamRocket.domain.User;
import com.teamRocket.mapper.home.DepartmentDao;
import com.teamRocket.service.DepartmentService;
import com.teamRocket.utils.page.MINIBaseResult;
import com.teamRocket.utils.page.PageBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {
    @Resource
    private DepartmentDao departmentDao;

    @Override
    public MINIBaseResult<Department> findAll(Department department, int pageIndex, int pageSize) {
        MINIBaseResult<Department> result = new MINIBaseResult<Department>();
        int total = departmentDao.getTotal(department);
        System.out.println(total);
        PageBean<Department> pageBean = new PageBean<Department>(pageIndex+1,pageSize,total);
        pageBean.setParameter(department);
        List<Department> deptList = departmentDao.findAll(pageBean);

        result.setTotal(total);
        result.setData(deptList);
        return result;
    }


//    @Override
//    public List<Department> findAll() {
//        return departmentDao.findAll();
//    }
}
