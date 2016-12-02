package org.lanqiao.domain;

import java.sql.Date;

public class Reply {
	private int id;
	private String rauther;
	private String rcontent;
	private Date rregdate;
	private int reply_post_id;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRauther() {
		return rauther;
	}
	public void setRauther(String rauther) {
		this.rauther = rauther;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public Date getRregdate() {
		return rregdate;
	}
	public void setRregdate(Date rregdate) {
		this.rregdate = rregdate;
	}
	public int getReply_post_id() {
		return reply_post_id;
	}
	public void setReply_post_id(int reply_post_id) {
		this.reply_post_id = reply_post_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Reply [id=" + id + ", rauther=" + rauther + ", rcontent=" + rcontent + ", rregdate=" + rregdate
				+ ", reply_post_id=" + reply_post_id + ", password=" + password + "]";
	}
	public Reply(int id, String rauther, String rcontent, Date rregdate, int reply_post_id, String password) {
		super();
		this.id = id;
		this.rauther = rauther;
		this.rcontent = rcontent;
		this.rregdate = rregdate;
		this.reply_post_id = reply_post_id;
		this.password = password;
	}
	public Reply() {
		super();
	}
	
	
}
