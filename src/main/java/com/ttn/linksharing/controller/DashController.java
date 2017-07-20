package com.ttn.linksharing.controller;

import com.ttn.linksharing.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class DashController {

    private User user;

    @RequestMapping(value = "/getPhoto")
    public void getPhoto(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        user = (User) session.getAttribute("UserDetails");
        System.out.println("Photo of user: " + user.getFirstName());
        byte[] arr = user.getPhoto();
        response.getOutputStream().write(arr);
    }
}
