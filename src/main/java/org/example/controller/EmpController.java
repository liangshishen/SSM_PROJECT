package org.example.controller;

import org.example.bean.Emp;
import org.example.service.EmpService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmpController {

	@Resource
	private EmpService empService;

	@RequestMapping("/showEmpList.do")
	public String showEmpList(Model model) {
		List<Emp> emps = empService.getAllEmp();
		model.addAttribute("emps", emps);
		return "empList";
	}

}
