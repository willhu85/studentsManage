package com.huweiwei.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.mysql.jdbc.PreparedStatement;

public class DBUtil {
    private static String DRIVER;
    private static String DBURL;
    private static String USER;
    private static String PASSWORD;
    private static Connection connection;
    /*
     * 加载配置文件
     */
    static {
        InputStream inputStream = DBUtil.class.getClassLoader().getResourceAsStream("DBUtil.properties");
        Properties properties = new Properties();
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        DRIVER = properties.getProperty("DRIVER");
        DBURL = properties.getProperty("DBURL");
        USER = properties.getProperty("USER");
        PASSWORD = properties.getProperty("PASSWORD");
    }
    
    /*
     * 获取链接
     */
    public static Connection makeConnection() {
        try {
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(DBURL, USER, PASSWORD);
        } catch (SQLException | ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    
    /*
     * 关闭连接
     */
    
    public static void closeConnection(PreparedStatement preparedStatement, Connection connection) {
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    } 
}
