package com.ngohongthai.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ngohongthai.model.Post;

@Repository
public interface PostRepository extends JpaRepository<Post, Integer> {

	public List<Post> findFirst5ByOrderByCreatedDesc();
	
	public List<Post> findFirst4ByOrderByPostViewDesc();
}
