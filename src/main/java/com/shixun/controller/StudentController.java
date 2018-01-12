package com.shixun.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.shixun.model.StudentModel;
import com.shixun.service.impl.StudentServiceImpl;

@Controller
public class StudentController {

	@Autowired
	private StudentServiceImpl stuser;
	
	/*
	 * 查询全部
	 */
	@RequestMapping(value="findAll")
	public ModelAndView findAll() {
		
		ModelAndView modelAndView=new ModelAndView("info");
		modelAndView.addObject("studentList",stuser.findAll());
		return modelAndView;
	}

	
	/*
	 * 查询全部
	 */
	@RequestMapping(value="findAll2",produces={"text/html;charset=UTF-8;"})
	@ResponseBody
	public String findAll2() {
		
		JSONObject jo=new JSONObject();
		List<StudentModel> studentList=stuser.findAll();
		jo.put("studentList",studentList);
		return jo.toJSONString();
	}
	
	/*
	 * 按方向查询
	 */
	@RequestMapping(value="findByDirection",produces={"text/html;charset=UTF-8;"})
	@ResponseBody
	public String findByDirection(String direction) {
		JSONObject jo=new JSONObject();
		List<StudentModel> studentList=stuser.findByDirection(direction);
		jo.put("studentList",studentList);
		return jo.toJSONString();
	}

	/*
	 * 按性别查询
	 */
	@RequestMapping(value="findBySex",produces={"text/html;charset=UTF-8;"})
	@ResponseBody
	public String findBySex(String sex) {
		JSONObject jo=new JSONObject();
		jo.put("studentList",stuser.findBySex(sex));
		return jo.toJSONString();
	}
	
	/*
	 * 去到新增学生页面
	 */
	@RequestMapping(value="to_addStudent")
	public ModelAndView toaddStudent() {
		
		ModelAndView modelAndView=new ModelAndView("addStudent");
		return modelAndView;
	}
	
	/*
	 * 新增学生
	 */
	@RequestMapping(value="addStudent",method=RequestMethod.POST)
	public ModelAndView addStudent(StudentModel stu) {
		
		stuser.addStudent(stu);
		return findAll();
	}
}
