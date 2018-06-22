package org.example.service;

import org.example.bean.Emp;
import org.example.mapper.EmpMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EmpServiceImpl implements EmpService {

	@Resource
	private EmpMapper empMapper;

	@Override
	public List<Emp> getAllEmp() {
		return empMapper.selectAll();
	}

}
