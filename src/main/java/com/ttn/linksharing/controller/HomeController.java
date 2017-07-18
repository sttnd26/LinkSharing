package com.ttn.linksharing.controller;

import com.ttn.linksharing.model.User;
import com.ttn.linksharing.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView hello() {

		ModelAndView model = new ModelAndView();
		model.setViewName("index");

		return model;

	}

	@RequestMapping("/login")
	ModelAndView register() {
		ModelAndView view = new ModelAndView("login");
		return view;
	}


	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	ModelAndView login(@ModelAttribute("user") User user,
						@RequestParam("file") MultipartFile[] fileUpload, MultipartHttpServletRequest request) {


		try {
			userService.setPicture(fileUpload,user);
		} catch (Exception e) {
			System.out.println("Exception occurred while uploading Photo- "+e);
		}

		ModelAndView modelAndView = new ModelAndView();
		userService.addorUpdUser(user);

		modelAndView.setViewName("register");
		return modelAndView;
	}

}