package com.ttn.linksharing.service;

import com.ttn.linksharing.model.User;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;


public interface UserService {

    void addorUpdUser(User user);

    User getUser(long userid);

    void setPicture( MultipartFile[] fileUpload, User user) throws IOException;
}
