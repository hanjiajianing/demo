package com.hua.dao;

import com.hua.entity.ExamArrange;

import java.util.List;

public interface ExamArrangeDAO {
	public List<ExamArrange> getAll();
	
	public List<ExamArrange> getAllWithStudentId(String studentId);
	
	public void insert(ExamArrange examArrange);
	
	public void update(ExamArrange examArrange);
	
	public void delete(String studentId);
	
	/**
	 * ���غ�studentId��ȵļ�¼��
	 * @param studentId
	 * @return
	 */
	public long getCountWithName(String studentId);
	
	/**
	 * ���غ�studentId��yearTerm��ȵļ�¼
	 * @param studentId
	 * @param yearTerm
	 * @param week
	 * @return
	 */
	public List<ExamArrange> getAllWithYearTerm(String studentId,
			String yearTerm);
}
