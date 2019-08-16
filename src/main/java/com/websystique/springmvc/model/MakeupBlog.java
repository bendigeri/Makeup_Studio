package com.websystique.springmvc.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="MAKEUP_BLOG_POSTS")
public class MakeupBlog implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="post_ID")
	private Integer id;
	
	@NotEmpty
	@Column(name="article_title")
	private String title;
	
	@Column(name="post_status")
	private String postStatus;
	
	@NotEmpty
	@Column(name="FILE_BLOB")
	private byte[] fileBytes;
	
	@NotEmpty
	@Column(name="article_content")
	private String articleContent;
	
	@Column(name="post_date")
	private Date postDate;

	@Column(name="short_article_content")
	private String shortArticleContent;
	
	public String getShortArticleContent() {
		return shortArticleContent;
	}

	public void setShortArticleContent(String shortArticleContent) {
		this.shortArticleContent = shortArticleContent;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public byte[] getFileBytes() {
		return fileBytes;
	}

	public void setFileBytes(byte[] fileBytes) {
		this.fileBytes = fileBytes;
	}

	public String getPostStatus() {
		return postStatus;
	}

	public void setPostStatus(String postStatus) {
		this.postStatus = postStatus;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		
		this.articleContent = articleContent;
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

}
