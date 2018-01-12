package com.shixun.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_stu")
public class StudentModel {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int no;
	
	private String name;
	private String sex;
	private String profession;
	private String direction;
	private int technology;
	private int ability;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public int getTechnology() {
		return technology;
	}
	public void setTechnology(int technology) {
		this.technology = technology;
	}
	public int getAbility() {
		return ability;
	}
	public void setAbility(int ability) {
		this.ability = ability;
	}
	public StudentModel(int no, String name, String sex, String profession, String direction, int technology, int ability) {
		super();
		this.no = no;
		this.name = name;
		this.sex = sex;
		this.profession = profession;
		this.direction = direction;
		this.technology = technology;
		this.ability = ability;
	}
	public StudentModel(String name, String sex, String profession, String direction, int technology, int ability) {
		super();
		this.name = name;
		this.sex = sex;
		this.profession = profession;
		this.direction = direction;
		this.technology = technology;
		this.ability = ability;
	}
	public StudentModel(int no) {
		super();
		this.no = no;
	}
	public StudentModel() {
		super();
	}
	
}
