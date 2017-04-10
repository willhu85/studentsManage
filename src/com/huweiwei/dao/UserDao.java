package com.huweiwei.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.huweiwei.entity.User;
import com.huweiwei.util.DBUtil;
import com.mysql.jdbc.PreparedStatement;

public class UserDao {
    private Connection connection;
    private PreparedStatement preparedStatement;
    /*
     * 验证用户权限
     */
    public boolean validate(User user) {
        String sql = "select * from user where username = ? and password = ?";
        connection = DBUtil.makeConnection();
        try {
            preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(preparedStatement, connection);
        }
        return false;
        
    }
}
