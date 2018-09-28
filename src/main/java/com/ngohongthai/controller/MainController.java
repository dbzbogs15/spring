package com.ngohongthai.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ngohongthai.model.Category;
import com.ngohongthai.model.Post;
import com.ngohongthai.service.CategoryService;
import com.ngohongthai.service.PostService;

@Controller
public class MainController {

	@Autowired
	CategoryService categoryService;
	@Autowired
	PostService postService;

	@RequestMapping("/main")
	public String index(HttpServletRequest request) {
		System.out.println(request.getServletContext().getRealPath("resources"));
		return "index";
	}

	@RequestMapping("/")
	@Transactional
	public String main(ModelMap mm) {
		@SuppressWarnings("deprecation")
		Pageable pageable = new PageRequest(1, 5, Direction.DESC, "created");
		List<Post> slides = postService.get2LastetPost(pageable).getContent();
		List<Post> cateAnime = categoryService.getCategory(1).getPosts().subList(0, 6);
		List<Post> cateManga = categoryService.getCategory(2).getPosts().subList(0, 6);
		List<Post> cateLightNovel = categoryService.getCategory(3).getPosts().subList(0, 6);
		List<Post> topView = postService.findFirst4ByOrderByPostViewDesc();
		List<Post> cateGame = categoryService.getCategory(4).getPosts().subList(0, 6);
		List<Category> tagCates = categoryService.findAll();
		mm.addAttribute("title", "Trang chủ | NewsFeed");
		mm.addAttribute("tagCates", tagCates);
		mm.addAttribute("cateGame", cateGame);
		mm.addAttribute("topView", topView);
		mm.addAttribute("cateAnime", cateAnime);
		mm.addAttribute("cateManga", cateManga);
		mm.addAttribute("cateLightNovel", cateLightNovel);
		mm.addAttribute("lastest2", slides);
		mm.addAttribute("slides", postService.getLastetPost());
		mm.addAttribute("count", postService.getLastetPost().size());
		return "main";
	}

	@Transactional
	@GetMapping("/{categoryUrl}/{id}")
	public ModelAndView views(@PathVariable String categoryUrl, @PathVariable int id) {
		ModelAndView modelAndView = new ModelAndView("post");
		@SuppressWarnings("deprecation")
		Pageable pageable = new PageRequest(1, 5, Direction.DESC, "created");
		List<Category> tagCates = categoryService.findAll();
		List<Post> slides = postService.get2LastetPost(pageable).getContent();
		Post post = postService.getOne(id);
		String cates = StringUtils.capitalize(categoryUrl);
		modelAndView.addObject("lastest2", slides);
		modelAndView.addObject("tagCates", tagCates);
		modelAndView.addObject("post", post);
		modelAndView.addObject("title", "NewsFeed | " + cates + " | " + post.getName());
		return modelAndView;
	}
	
	@GetMapping("/edit")
	public ModelAndView edit() {
		ModelAndView modelAndView = new ModelAndView("edit");
		modelAndView.addObject("post", new Post());
		return modelAndView;
	}
}
