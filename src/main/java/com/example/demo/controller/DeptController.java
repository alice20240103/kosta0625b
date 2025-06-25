package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DeptController {

	@GetMapping("/board/list")
	public String list() {
		return "게시물 목록";
	}
}
