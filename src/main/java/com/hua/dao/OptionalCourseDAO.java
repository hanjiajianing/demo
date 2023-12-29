package com.hua.dao;

import com.hua.entity.OptionalCourse;

import java.util.List;

public interface OptionalCourseDAO {
	public List<OptionalCourse> getAll();

	public OptionalCourse getByCourseId(String courseId);
	public OptionalCourse get(String courseId);
	
	public OptionalCourse get(String courseId, String yearTerm);
	
	public void insert(OptionalCourse optionalCourse);
	
	public void update(OptionalCourse optionalCourse);
	
	public void delete(String courseId);
	
	/**
	 * ���غ�studentId��ȵļ�¼��
	 * @param courseId
	 * @return
	 */
	public long getCountWithName(String courseId);
	
	/**
	 * ���غ�yearTerm��ȵļ�¼
	 * @param yearTerm
	 * @return
	 */
	public List<OptionalCourse> getAllWithYearTerm(String yearTerm);
}
