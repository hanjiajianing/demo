package com.hua.servlet;

import com.hua.dao.OptionalCourseDAO;
import com.hua.entity.OptionalCourse;
import com.hua.impl.OptionalCourseDAOImpl;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import sun.security.mscapi.CPublicKey;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.List;

@WebServlet("*.Course")
public class CourseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
     private OptionalCourseDAO optionalCourseDAO =new OptionalCourseDAOImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
    {   //获取servlt的地址
        String servletPath = request.getServletPath();
        String methodName = servletPath.substring(1,servletPath.length()-7);

        try{
            Method method = this.getClass().getDeclaredMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
            method.invoke(this,request,response);
        }catch (Exception e){
            e.printStackTrace();
        }


    }

    public void query(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
    {
        //获取课程列表
        List<OptionalCourse> optionalCourseList = optionalCourseDAO.getAll();
        //将courseList放入
        request.setAttribute("courseList",optionalCourseList);
        request.getRequestDispatcher("/CourseAdmin/courseAdmin.jsp").forward(request,response);
    }



    public void add(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        //获取属性
String yearTerm = (String) request.getParameter("yearTerm");
String courseId =(String) request.getParameter("courseId");
String courseName =(String) request.getParameter("courseName");
String teacher =(String) request.getParameter("teacher");
String classWay =(String) request.getParameter("classWay");
String classTime =(String) request.getParameter("classTime");
String credit ="1";
String courseType =(String) request.getParameter("courseType");
OptionalCourse optionalCourse =new OptionalCourse();
optionalCourse.setCourseId(courseId);
optionalCourse.setYearTerm(yearTerm);
optionalCourse.setCourseName(courseName);
optionalCourse.setTeacher(teacher);
optionalCourse.setClassWay(classWay);
optionalCourse.setClassTime(classTime);
optionalCourse.setCredit(credit);
optionalCourse.setCourseType(courseType);
//将对象插入数据库
optionalCourseDAO.insert(optionalCourse);
//返回查找页面
query(request,response);

    }


    public void delete(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        String courseId =(String) request.getParameter("courseId");
        optionalCourseDAO.delete(courseId);
        query(request,response);

    }

    public void output(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
    {
//        String courseId =(String) request.getParameter("courseId");
        //获取列表
        List<OptionalCourse> courseList = optionalCourseDAO.getAll();
        //创建Excel工作对象
        Workbook workbook = new XSSFWorkbook();
        //创建具体表单
        Sheet sheet = workbook.createSheet("Sheet1");
        //创建行
        Row row0 =sheet.createRow(0);
        //创建单元格
        Cell cell00= row0.createCell(0);
        Cell cell01 =row0.createCell(1);
        Cell cell02 =row0.createCell(2);
        Cell cell03 =row0.createCell(3);
        Cell cell04 =row0.createCell(4);
        cell00.setCellValue("YearTerm");
        cell01.setCellValue("CourseName");
        cell02.setCellValue("Teacher");
        cell03.setCellValue("ClassTime");
        cell04.setCellValue("Classway");
        for(int i=0;i<courseList.size();i++){
            Row row = sheet.createRow(i+1);
            Cell cell1 =row.createCell(0);
            Cell cell2 =row.createCell(1);
            Cell cell3 =row.createCell(2);
            Cell cell4 =row.createCell(3);
            Cell cell5 =row.createCell(4);
            cell1.setCellValue(courseList.get(i).getYearTerm());
            cell2.setCellValue(courseList.get(i).getCourseName());
            cell3.setCellValue(courseList.get(i).getTeacher());
            cell5.setCellValue(courseList.get(i).getCourseType());
            cell4.setCellValue(courseList.get(i).getClassTime());

        }
        Calendar calendar =Calendar.getInstance();
        String filename ="course.xlsx";
        //创建文件
        File file = new File(filename);
        if(file.exists()) file.delete();
        //创建文件输出流
        FileOutputStream fileOutputStream =new FileOutputStream(file);
        //创建文件输入流
        FileInputStream fileInputStream = new FileInputStream(file);
        //将表写入输出流
        workbook.write(fileOutputStream);
        //设置返回文件头
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition","attachment;filename="+filename);
        //使用IO类将文件输入流放入esponse的文件流中
        IOUtils.copy(fileInputStream,response.getOutputStream());
        //关闭文件输出流
        fileOutputStream.close();
        //给对象赋空值
        cell00=null;
        cell01=null;
        cell02=null;
        cell03=null;
        cell04=null;
        calendar=null;
        workbook=null;
        sheet=null;
        //进行垃圾回收，回收用过的对象
        System.gc();
    }


}
