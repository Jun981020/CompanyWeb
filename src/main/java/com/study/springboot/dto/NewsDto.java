package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NewsDto {

	private int news_idx;
	private String news_title;
	private String news_content;
	private String news_member_id;
	private Date news_date;
	
	
	public NewsDto(int news_idx, String news_title, String news_content, String news_member_id, Date news_date) {
		super();
		this.news_idx = news_idx;
		this.news_title = news_title;
		this.news_content = news_content;
		this.news_member_id = news_member_id;
		this.news_date = news_date;
	}

}
