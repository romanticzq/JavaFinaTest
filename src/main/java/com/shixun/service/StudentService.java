package com.shixun.service;

import java.util.List;

import com.shixun.model.StudentModel;

public interface StudentService {

	// 查询全部
	public List<StudentModel> findAll();

	// 按方向查询
	public List<StudentModel> findByDirection(String direction);

	// 按性别查询
	public List<StudentModel> findBySex(String sex);
	
	//新增学生
	public void addStudent(StudentModel stu);
}
