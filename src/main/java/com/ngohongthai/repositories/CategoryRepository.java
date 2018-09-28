package com.ngohongthai.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ngohongthai.model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
	
	public Category findAllByLinkUrl(String linkUrl);
	
}
