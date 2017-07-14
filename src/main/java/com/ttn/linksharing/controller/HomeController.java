package com.ttn.linksharing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView hello() {

		ModelAndView model = new ModelAndView();
		model.setViewName("index");

		return model;

	}


	@RequestMapping("/login")
	ModelAndView login() {
		ModelAndView view1 = new ModelAndView("login");
		return view1;
	}

	@RequestMapping("/register")
	ModelAndView register() {
		ModelAndView view2 = new ModelAndView("register");
		return view2;
	}

}