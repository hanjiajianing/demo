package com.hua.servlet;

import com.hua.dao.OptionalCourseDAO;
import com.hua.dao.StudentOptCourseDAO;
import com.hua.dao.UserDAO;
import com.hua.entity.CriterUser;
import com.hua.entity.OptionalCourse;
import com.hua.entity.StudentOptCourse;
import com.hua.entity.User;
import com.hua.impl.OptionalCourseDAOImpl;
import com.hua.impl.StudentOptCourseDAOImpl;
import com.hua.impl.UserDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import java.io.IOException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
//获取后缀为UserCourse的所有请求
@WebServlet("*.UserCourse")
public class UserCourseServlet extends HttpServlet {
    private static final long serialVersionUID =1L;

    private UserDAO userDAO = new UserDAOImpl();
 private StudentOptCourseDAO studentOptCourseDAO =new StudentOptCourseDAOImpl();

 private OptionalCourseDAO optionalCourseDAO =new OptionalCourseDAOImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    //通过反射获取请求头信息以及参数信息
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取ServletPath：/addUser.do
        String servletPath = request.getServletPath();
        //2.去除 / 和 .do ，得到类似于addUser这样的字符串
        String methodName = servletPath.substring(1, servletPath.length() - 11);

        try {
            //3.利用反射获取methodName对应的方法
            Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            //4.利用反射调用对应的方法
            method.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @SuppressWarnings("unused")
    private void query(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String identity = request.getParameter("identity");
        CriterUser user = new CriterUser(username, name, identity);

        //1.直接调用CustomerDAO的getAll()得到Customer的集合
        List<User> users = userDAO.getForListWithCriterCustomer(user);

        //2.把Customer的集合放入request中
        request.setAttribute("users", users);
        request.getRequestDispatcher("/adminCourse/userCourse.jsp").forward(request,response);
    }

    private void find(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        String username =request.getParameter("username");
        String forwardPath = "/error.jsp";
        try {
            User user = userDAO.get(username);
            if(user != null){
                forwardPath = "/adminCourse/adminCourse.jsp";
                //3.将user放入request中
                request.setAttribute("user", user);
                List<String> courseIdList =studentOptCourseDAO.getCountWithName(username);

                List<OptionalCourse> courseList =new ArrayList<OptionalCourse>();
                OptionalCourse optionalCourse =new OptionalCourse();
                for(int i=0;i<courseIdList.size();i++){
                    String courseId =courseIdList.get(i);
                    optionalCourse=optionalCourseDAO.getByCourseId(courseId);
                    courseList.add(optionalCourse);
                    courseId=null;

                }
                request.setAttribute("courseList",courseList);
            }
        } catch (Exception e) {

        }
        request.getRequestDispatcher(forwardPath).forward(request, response);
    }


    private void delete(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
      String courseId =request.getParameter("courseId");
        String forwardPath = "/error.jsp";
        try {
         String username =(String) request.getParameter("username");
//         String courseId = (String) request.getAttribute("courseId");
            studentOptCourseDAO.deleteByCourseIdStudentId(username,courseId);
           this.find(request,response);
        }catch (Exception e){

        }


        }

//导出excel表单
    private void output(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
        String username =request.getParameter("username");

        try {
            User user = userDAO.get(username);
            if(user != null){

             //获取数据
                List<String> courseIdList =studentOptCourseDAO.getCountWithName(username);

                List<OptionalCourse> courseList =new ArrayList<OptionalCourse>();
                OptionalCourse optionalCourse =new OptionalCourse();
                for(int i=0;i<courseIdList.size();i++){
                    String courseId =courseIdList.get(i);
                    optionalCourse=optionalCourseDAO.getByCourseId(courseId);
                    courseList.add(optionalCourse);
                    courseId=null;

                }
               //创建
                Workbook workbook = new XSSFWorkbook();
                Sheet sheet = workbook.createSheet("Sheet1");
                Row row0 =sheet.createRow(0);
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
//               String PATH ="D:\\";
                Calendar calendar =Calendar.getInstance();
                String filename ="course.xlsx";
                File file = new File(filename);
                if(file.exists()) file.delete();
                FileOutputStream fileOutputStream =new FileOutputStream(file);
                FileInputStream fileInputStream = new FileInputStream(file);
                workbook.write(fileOutputStream);
                response.setContentType("application/octet-stream");
                response.setHeader("Content-Disposition","attachment;filename="+filename);
                IOUtils.copy(fileInputStream,response.getOutputStream());

                fileOutputStream.close();


            }
        } catch (Exception e) {
             e.printStackTrace();
        }



    }



}
