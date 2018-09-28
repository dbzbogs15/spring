package com.ngohongthai.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;



@Entity
@Table(name = "post")
@JsonIgnoreProperties("postId")
public class Post implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable = false)
	private int postId;
	private String name;
	private String summary;
	private String image;
	private String content;
	private int postView;
	private int postVote;
	private String author;
	@ManyToOne
	@JoinColumn(name = "categoryId")
	@JsonIgnore
	private Category category;
	private Date created;
	@Column(insertable=false, updatable=false)
	private int categoryId;

	@Override
	public String toString() {
		return "Post [postId=" + postId + ", name=" + name + ", summary=" + summary + ", image=" + image + ", content="
				+ content + ", postView=" + postView + ", postVote=" + postVote + ", author=" + author + ", category="
				+ category + ", created=" + created + ", categoryId=" + categoryId + "]";
	}

	public Post() {
		super();
	}

	public Post(int postId, String name, String summary, String image, String content, int postView, int postVote,
			String author,int categoryId, Date created) {
		super();
		this.postId = postId;
		this.name = name;
		this.summary = summary;
		this.image = image;
		this.content = content;
		this.postView = postView;
		this.postVote = postVote;
		this.author = author;
		this.categoryId = categoryId;
		this.created = created;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getPostView() {
		return postView;
	}

	public void setPostView(int postView) {
		this.postView = postView;
	}

	public int getPostVote() {
		return postVote;
	}

	public void setPostVote(int postVote) {
		this.postVote = postVote;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@JsonIgnore
	public void setCategory(Category category) {
		this.category = category;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@JsonIgnore
	public Category getCategory() {
		return category;
	}
}
