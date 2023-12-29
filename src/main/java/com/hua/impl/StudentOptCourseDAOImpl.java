package com.hua.impl;

import com.hua.dao.DAO;
import com.hua.dao.StudentOptCourseDAO;
import com.hua.entity.StudentOptCourse;

import java.util.ArrayList;
import java.util.List;

public class StudentOptCourseDAOImpl extends DAO<StudentOptCourse> implements StudentOptCourseDAO {

	@Override
	public List<StudentOptCourse> getAll() {
		String sql = "SELECT * FROM StudentOptCourse;";
		return getForList(sql);
	}

	@Override
	public StudentOptCourse get(String studentId) {
		String sql = "select *from StudentOptCourse where studentId = ?";
		return get(sql, studentId);
	}

	@Override
	public void insert(StudentOptCourse studentOptCourse) {
		String sql = "insert into StudentOptCourse values(?,?)";
		update(sql , studentOptCourse.getStudentId(),studentOptCourse.getCourseId());

	}

	@Override
	public void update(StudentOptCourse studentOptCourse) {
		String sql = "update StudentOptCourse set CourseId = ? where studentId = ?";
		update(sql, studentOptCourse.getCourseId(), studentOptCourse.getStudentId() );

	}

	@Override
	public void delete(String studentId) {
		String sql = "delete from StudentOptCourse where studentId = ?";
		update(sql, studentId);
	}

	@Override
	public void deleteByCourseIdStudentId(String studentId, String courseId) {
		String sql ="delete from StudentOptCourse where studentId = ? and courseId=?";
		super.update(sql,studentId,courseId);
	}

	@Override
	public List<String> getCountWithName(String studentId) {
		// TODO Auto-generated method stub
		String sql ="select * from StudentOptCourse where studentId = ?";
        List<String> res = new ArrayList<>();
		List<StudentOptCourse> studentOptCourseList = getForList(sql, studentId);
		for(int i=0;i<studentOptCourseList.size();i++){
			res.add(studentOptCourseList.get(i).getCourseId());
		}
		return res;
	}

	@Override
	public StudentOptCourse get(StudentOptCourse studentOptCourse) {
		String sql = "select *from StudentOptCourse where studentId = ? and courseId = ?";
		return get(sql, studentOptCourse.getStudentId(), studentOptCourse.getCourseId());
	}

	@Override
	public List<StudentOptCourse> getAll(String studentId) {
		String sql = "SELECT * FROM StudentOptCourse where studentId = ?;";
		return getForList(sql, studentId);
	}


}
