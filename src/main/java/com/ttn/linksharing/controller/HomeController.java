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

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String printWelcome(ModelMap model) {
//
//		model.addAttribute("message", "Spring 3 MVC Hello World");
//		return "index";
//
//	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView hello() {

		ModelAndView model = new ModelAndView();
		model.setViewName("index");

		return model;

	}

	@ResponseBody
	@RequestMapping("/login")
	String login() {
		return "Login pg.";
	}

	@RequestMapping("/register")
	ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView("register");
		return modelAndView;
	}

	//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public ModelAndView hello(@PathVariable("name") String name) {
//
//		ModelAndView model = new ModelAndView();
//		model.setViewName("hello");
//		model.addObject("msg", name);
//
//		return model;
//
//	}
//
//
//	@RequestMapping(value = "/register", method = RequestMethod.GET)
//	public ModelAndView register(@PathVariable("name") String name) {
//
//		ModelAndView model = new ModelAndView();
//		model.setViewName("hello");
//		model.addObject("msg", name);
//
//		return model;
//
//	}
}