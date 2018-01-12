package com.shixun.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shixun.dao.StudentDao;
import com.shixun.model.StudentModel;

@Repository
public class StudentDaoImpl implements StudentDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	/*
	 * 查询全部
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<StudentModel> findAll() {
		
		List<StudentModel> studentList=(List<StudentModel>) this.sessionFactory.getCurrentSession().createQuery("from StudentModel").list();
		return  studentList;
	}

	/*
	 * 按方向查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<StudentModel> findByDirection(String direction) {
		
		System.out.println("dao:"+direction);
		List<StudentModel> studentList=sessionFactory.getCurrentSession().createQuery("from StudentModel where direction=?").setParameter(0, direction).list();
//		System.out.println(studentList.get(0).getAbility());
		return  studentList;
	}

	/*
	 * 按性别查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<StudentModel> findBySex(String sex) {
		
		List<StudentModel> studentList=(List<StudentModel>) this.sessionFactory.getCurrentSession().createQuery("from StudentModel where sex=?").setParameter(0, sex).list();
		
		return  studentList;
	}

	/*
	 * 新增学生
	 */
	@Override
	public void addStudent(StudentModel stu) {
		
		this.sessionFactory.getCurrentSession().save(stu);
	}

}
