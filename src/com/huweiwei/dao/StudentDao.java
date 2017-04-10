package com.huweiwei.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.huweiwei.entity.Student;
import com.huweiwei.util.DBUtil;
import com.mysql.jdbc.PreparedStatement;
import com.sun.xml.internal.bind.v2.model.core.ID;

public class StudentDao {
    private Connection connection;
    private PreparedStatement preparedStatement;
    
    public StudentDao() {
        connection = DBUtil.makeConnection();
    }
    /*
     * 添加学生信息
     */
    public boolean addStudents(Student student) {
        String sql = "INSERT INTO students(nickName, realName, gender, birthDay, major, course, interest, remark)" +
                    "values(?,?,?,?,?,?,?,?)";
        try {
            preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
            preparedStatement.setString(1, student.getNickName());
            preparedStatement.setString(2, student.getRealName());
            preparedStatement.setString(3, student.getGender());
            preparedStatement.setString(4, student.getBirthDay());
            preparedStatement.setString(5, student.getMajor());
            preparedStatement.setString(6, student.getCourses());
            preparedStatement.setString(7, student.getInterests());
            preparedStatement.setString(8, student.getRemark());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeConnection(preparedStatement, connection);
        }
        
    }
    
    /*
     * 修改学生信息
     */
    public boolean changeStudents(Student student) {
        String sql = "UPDATE students set nickName=?, realName=?, gender=?, birthDay=?, major=?, course=?, interest=?, remark=? where id =?";
        try {
            preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
            preparedStatement.setString(1, student.getNickName());
            preparedStatement.setString(2, student.getRealName());
            preparedStatement.setString(3, student.getGender());
            preparedStatement.setString(4, student.getBirthDay());
            preparedStatement.setString(5, student.getMajor());
            preparedStatement.setString(6, student.getCourses());
            preparedStatement.setString(7, student.getInterests());
            preparedStatement.setString(8, student.getRemark());
            preparedStatement.setInt(9, student.getId());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeConnection(preparedStatement, connection);
        }
        
    }
    
    /*
     * 删除学生信息
     */
    public boolean deleteStudents(int id) {
        String sql = "DELETE FROM students where id =?";
        try {
            preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            if(preparedStatement.executeUpdate() > 0) {
                return true;
            };
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeConnection(preparedStatement, connection);
        }
        return false;
        
    }
    
    public List<Student> getAll() {
        String sql = "SELECT * FROM students";
        try {
            preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();   
            List<Student> sList = new ArrayList<Student>();
            while(resultSet.next()) {
                Student student = new Student();
                student.setId(resultSet.getInt(1));
                student.setNickName(resultSet.getString(2));
                student.setRealName(resultSet.getString(3));
                student.setGender(resultSet.getString(4));
                student.setBirthDay(resultSet.getString(5));
                student.setMajor(resultSet.getString(6));
                student.setCourses(resultSet.getString(7));
                student.setInterests(resultSet.getString(8));
                student.setRemark(resultSet.getString(9));
                sList.add(student);
            }
            return sList;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        } finally {
            DBUtil.closeConnection(preparedStatement, connection);
        }
        
    }
    /*
     * 查询制定ID学生信息
     */
    public Student getById(int id) {
        String sql = "SELECT * FROM students where id = ?";
        try {
            preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();   
            Student student = new Student();
            if(resultSet.next()) {
                student.setId(resultSet.getInt(1));
                student.setNickName(resultSet.getString(2));
                student.setRealName(resultSet.getString(3));
                student.setGender(resultSet.getString(4));
                student.setBirthDay(resultSet.getString(5));
                student.setMajor(resultSet.getString(6));
                student.setCourses(resultSet.getString(7));
                student.setInterests(resultSet.getString(8));
                student.setRemark(resultSet.getString(9));
            }
            return student;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        } finally {
            DBUtil.closeConnection(preparedStatement, connection);
        }
    }
}
