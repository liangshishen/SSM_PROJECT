package org.example.mapper;

import org.example.bean.Emp;

import java.util.List;

public interface EmpMapper {

	List<Emp> selectAll();

	Emp selectByEmpno(Integer empno);

	Integer insert(Emp emp);

	Integer update(Emp emp);

	Integer delete(Integer empno);

}
