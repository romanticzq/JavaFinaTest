package com.shixun.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shixun.dao.impl.StudentDaoImpl;
import com.shixun.model.StudentModel;
import com.shixun.service.StudentService;

@Transactional
@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDaoImpl studao;

	/*
	 * 查询全部
	 */
	@Override
	public List<StudentModel> findAll() {
		
		return studao.findAll();
	}

	/*
	 * 按方向查询
	 */
	@Override
	public List<StudentModel> findByDirection(String direction) {
		
		return studao.findByDirection(direction);
	}

	/*
	 * 按性别查询
	 */
	@Override
	public List<StudentModel> findBySex(String sex) {
		
		return studao.findBySex(sex);
	}

	/*
	 * 新增学生
	 */
	@Override
	public void addStudent(StudentModel stu) {
		
		studao.addStudent(stu);
	}

}
