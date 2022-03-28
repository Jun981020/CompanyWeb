package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeDto {
	
	private int notice_idx;
	private String notice_title;
	private String notice_content;
	private String notice_member_id;
	private Date notice_date;
	
	public NoticeDto(int notice_idx, String notice_title, String noitce_content, String noitce_member_id,
			Date noitce_date) {
		super();
		this.notice_idx = notice_idx;
		this.notice_title = notice_title;
		this.notice_content = noitce_content;
		this.notice_member_id = noitce_member_id;
		this.notice_date = noitce_date;
	}
	
	
}
