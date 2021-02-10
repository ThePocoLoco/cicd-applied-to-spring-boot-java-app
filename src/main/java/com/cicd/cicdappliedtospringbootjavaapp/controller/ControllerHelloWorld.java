package com.cicd.cicdappliedtospringbootjavaapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControllerHelloWorld {

	@GetMapping("/")
	public String helloWorld() {
		return "Hello World";
	}

}
