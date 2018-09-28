package com.ngohongthai.controller;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import com.ngohongthai.model.Category;
import com.ngohongthai.model.Post;
import com.ngohongthai.service.CategoryService;
import com.ngohongthai.service.PostService;

@Controller
public class PostController {
	
	@Autowired
	PostService postService;
	@Autowired
	CategoryService categoryService;
	
	@PostMapping("/post/addpost")
	public String addpost(ModelMap mm, WebRequest wr) {
		String name = wr.getParameter("name");
		String summary = wr.getParameter("summary");
		String pre_image = wr.getParameter("image");
		String root = pre_image;
		String[] abc = root.split("/");
		int max = abc.length;
		String image = abc[max-2] + "/" + abc[max-1];
		System.out.println(image);
		String content = wr.getParameter("content");
		int postView = new Random().nextInt(1000);
		int postVote = new Random().nextInt(10);
		String author = "admin";
//		int categoryId = new Random().nextInt(4)*1;
		Date created = new Date();
		Post post = new Post();
//		Category category = Category
		Category category = categoryService.getCategory(1);
		post.setAuthor(author);
		post.setCategory(category);
		post.setCategoryId(1);
		post.setContent(content);
		post.setCreated(created);
		post.setPostView(postView);
		post.setPostVote(postVote);
		post.setImage(image);
		post.setSummary(summary);
		post.setName(name);
		System.out.println(post.toString());
		postService.addPost(post);
		return "redirect:/";
	}
	@ResponseBody
	@GetMapping("/api/cates")
	public List<Category> cates() {
		return categoryService.findAll();
	}
}
