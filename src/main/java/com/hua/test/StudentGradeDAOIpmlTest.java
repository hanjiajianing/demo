//package com.hua.test;
//
//import com.hua.dao.StudentGradeDAO;
//import com.hua.entity.StudentGrade;
//import com.hua.impl.StudentGradeDAOIpml;
//import org.junit.Test;
//
//import java.util.ArrayList;
//import java.util.Iterator;
//import java.util.List;
//
//import static org.junit.Assert.*;
//import static org.junit.Assert.fail;
//
//public class StudentGradeDAOIpmlTest {
//	StudentGradeDAO sgd = new StudentGradeDAOIpml();
//
//	@Test
//	public void testGetAll() {
//		List<StudentGrade> list = new ArrayList<>();
//		list = sgd.getAll();
//		Iterator<StudentGrade> iter = list.iterator();
//		while(iter.hasNext()){
//			System.out.println(iter.next());
//		}
//	}
//
//	@Test
//	public void testGetLong() {
//		System.out.println(sgd.getAllCourseGrade(3115001256l));
//	}
//
//	@Test
//	public void testInsert() {
//
//	}
//
//	@Test
//	public void testUpdateStudentGrade() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testDelete() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testGetCountWithStudentId() {
//		fail("Not yet implemented");
//	}
//
//}