package com.huweiwei.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.huweiwei.dao.UserDao;
import com.huweiwei.entity.User;

public class UserDaoTest {

    @Test
    public void test() {
        UserDao uDao = new UserDao();
        User user = new User();
        user.setUsername("hu");
        user.setPassword("123");
        
        System.out.println(uDao.validate(user));
    }

}
