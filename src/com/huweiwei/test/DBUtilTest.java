package com.huweiwei.test;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

import com.huweiwei.util.DBUtil;

public class DBUtilTest {

    @Test
    public void test() {
        try {
            System.out.println(DBUtil.makeConnection().getAutoCommit());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
