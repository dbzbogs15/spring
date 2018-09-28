package com.ngohongthai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ngohongthai.model.Category;
import com.ngohongthai.repositories.CategoryRepository;

@Service
public class CategoryService {
	
	@Autowired
	CategoryRepository repository;
	
	public Category getCategory(int id) {
		return repository.getOne(id);
	}
	
	public List<Category> findAll() {
		return repository.findAll();
	}
	
	public Category findAllByLinkUrl(String linkUrl) {
		return repository.findAllByLinkUrl(linkUrl);
	}
}
