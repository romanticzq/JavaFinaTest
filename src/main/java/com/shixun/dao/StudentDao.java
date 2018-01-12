package com.shixun.dao;

import java.util.List;

import com.shixun.model.StudentModel;

public interface StudentDao {

	//查询全部
	public List<StudentModel> findAll();
	//按方向查询
	public List<StudentModel> findByDirection(String direction);
	//按性别查询
	public List<StudentModel> findBySex(String sex);
	//新增学生
	public void addStudent(StudentModel stu);
	
}
