package com.ttn.linksharing.service;

import com.ttn.linksharing.model.User;

/**
 * Created by MAHE on 7/17/2017.
 */
public interface UserSevice {

    void addorUpdUser(User user);

    User getUser(long userid);
}
