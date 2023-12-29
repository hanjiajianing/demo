package com.hua.dao;

import com.hua.entity.StudentGrade;

import java.util.List;

public interface StudentGradeDAO {
	public List<StudentGrade> getAll();
	
	public List<StudentGrade> getAllCourseGrade(Long studentId);
	
	public void insert(StudentGrade  studentGrade);
	
	public void update(StudentGrade  studentGrade);
	
	public void delete(Long studentId);
	/**
	 * 返回和studentId相等的记录数
	 * @param name
	 * @return
	 */
	public Integer getCountWithStudentId(Long studentId);

	public List<StudentGrade> getAllWithYearTerm(Long studentId,
			String yearTerm);
}
