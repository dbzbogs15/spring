package com.ngohongthai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ngohongthai.model.Post;
import com.ngohongthai.repositories.PostRepository;

@Service
public class PostService {
	
	@Autowired
	PostRepository repository;

	public List<Post> getLastetPost() {
		return repository.findFirst5ByOrderByCreatedDesc();
	}
	
	public Page<Post> get2LastetPost(Pageable pageable) {
		return repository.findAll(pageable);
	}
	
	public List<Post> findFirst4ByOrderByPostViewDesc() {
		return repository.findFirst4ByOrderByPostViewDesc();
	}
	
	public Post getOne(int id) {
		return repository.getOne(id);
	}
	
	public Post addPost(Post post) {
		return repository.save(post);
	}
}
