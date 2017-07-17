package com.ttn.linksharing.service;

import com.ttn.linksharing.dao.UserDao;
import com.ttn.linksharing.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by MAHE on 7/17/2017.
 */

@Service("userService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)

public class UserServiceImpl implements UserSevice{

    @Autowired
    private UserDao userDao;

    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void addorUpdUser(User user) {
        userDao.addorUpdUser(user);
    }

    public User getUser(long userid) {
        return userDao.getUser(userid);
    }

}
