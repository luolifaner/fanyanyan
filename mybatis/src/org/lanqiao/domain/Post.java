package org.lanqiao.domain;

import java.sql.Date;

public class Post {
	private int id;
	private String auther;
	private String title;
	private Date regdate;
	public Post() {
		super();
	}
	@Override
	public String toString() {
		return "Post [id=" + id + ", auther=" + auther + ", title=" + title + ", regdate=" + regdate + ", content="
				+ content + "]";
	}
	public int getId() {
		return id;
	}
	public Post(int id, String auther, String title, Date regdate, String content) {
		super();
		this.id = id;
		this.auther = auther;
		this.title = title;
		this.regdate = regdate;
		this.content = content;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	private String content;
}
