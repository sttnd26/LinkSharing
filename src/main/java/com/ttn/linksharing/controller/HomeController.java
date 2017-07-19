package com.ttn.linksharing.controller;

import com.ttn.linksharing.model.User;
import com.ttn.linksharing.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.io.IOException;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@ModelAttribute
	void addingObject(Model model)
	{
		model.addAttribute("user", new User());
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView hello() {

		ModelAndView model = new ModelAndView();
		model.setViewName("index");

		return model;

	}

	@RequestMapping("/login")
	ModelAndView login() {
		ModelAndView view = new ModelAndView("login");
		return view;
	}


	@RequestMapping(value = "/register", method = RequestMethod.POST)

	ModelAndView register(@ModelAttribute("user") @Valid User user, BindingResult bindingResult,
					   @RequestParam("file") MultipartFile[] fileUpload, MultipartHttpServletRequest request) {

		if (bindingResult.hasErrors()) {
			ModelAndView modelrep = new ModelAndView("index");
			return modelrep;
		}

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