package com.huweiwei.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.huweiwei.dao.StudentDao;
import com.huweiwei.entity.Student;

public class StudentDaoTest {
 
    @Test
    public void test() {
        StudentDao studentDao = new StudentDao();
        List<Student> sList = studentDao.getAll();
        for (Student student : sList) {
            System.out.println(student.getCourses());
        }
    }
    @Test
    public void test2() {
        StudentDao studentDao = new StudentDao();
        Student student = studentDao.getById(2);
        System.out.println(student.getCourses());
    }

    @Test
    public void test3() {
        StudentDao studentDao = new StudentDao();
        Student student = new Student();
        student.setId(3);
        student.setNickName("11");
        student.setRealName("11");
        student.setGender("man");
        student.setBirthDay("1990-01-01");
        student.setCourses("11");
        student.setMajor("11");
        student.setInterests("11");
        student.setRemark("11");
        if (studentDao.changeStudents(student)) {
            System.out.println(student.getNickName());
        }
        
    }
}
