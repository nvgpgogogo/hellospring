package com.learn;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class HellospringApplication {

	public static void main(String[] args) {
		SpringApplication.run(HellospringApplication.class, args);
	}
	@RequestMapping("/hello")
	public String hello(@RequestParam(value = "name",defaultValue = "springboot",required = true)String n ){
		return String.format("Hello %s!", n);
	}
}
