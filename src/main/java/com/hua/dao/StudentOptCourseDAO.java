package com.hua.dao;

import com.hua.entity.StudentOptCourse;

import java.util.List;

public interface StudentOptCourseDAO {
	public List<StudentOptCourse> getAll();
	
	public StudentOptCourse get(String studentId);
	
	public List<StudentOptCourse> getAll(String studentId);
	
	public StudentOptCourse get(StudentOptCourse studentOptCourse);
	
	public void insert(StudentOptCourse studentOptCourse);
	
	public void update(StudentOptCourse studentOptCourse);
	
	public void delete(String studentId);

	public void deleteByCourseIdStudentId(String studentId,String courseId);

	/**
	 * 返回和studentId相等的记录数
	 * @param studentId
	 * @return
	 */
	public List<String> getCountWithName(String studentId);
	
}
