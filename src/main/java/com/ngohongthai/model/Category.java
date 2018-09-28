package com.ngohongthai.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.Proxy;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "category")
@Proxy(lazy = false)
public class Category implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(nullable = false)
	private int categoryId;
	private String name;
	private Date createdDate;
	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumns({
			@JoinColumn(name = "categoryId", referencedColumnName = "categoryId", insertable = false, updatable = false) })
	@OrderBy("created DESC")
	@JsonIgnore
	private List<Post> post = new ArrayList<Post>();
	private String linkUrl;

	public Category() {
		super();
	}

	public Category(int categoryId, String name, Date createdDate, String linkUrl) {
		super();
		this.categoryId = categoryId;
		this.name = name;
		this.createdDate = createdDate;
		this.linkUrl = linkUrl;
	}

	public List<Post> getPost() {
		return post;
	}

	public void setPost(List<Post> post) {
		this.post = post;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public List<Post> getPosts() {
		return post;
	}

	public void setPosts(List<Post> posts) {
		this.post = posts;
	}

	public int getCategoryID() {
		return categoryId;
	}

	public void setId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	@Override
	public String toString() {
		return "Category [id=" + categoryId + ", name=" + name + ", createdDate=" + createdDate + "]";
	}

}
