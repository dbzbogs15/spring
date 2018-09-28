package com.ngohongthai.api;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ngohongthai.model.Category;
import com.ngohongthai.service.CategoryService;

@RestController
@RequestMapping("/api")
public class MainAPI {
	@Autowired
	CategoryService cateSv;
	
	@GetMapping("/posts")
	public List<Category> list() {
		return cateSv.findAll();
	}
}
