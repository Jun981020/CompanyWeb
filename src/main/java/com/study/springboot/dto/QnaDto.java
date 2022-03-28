package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QnaDto {

	private int qna_idx;
	private String qna_name;
	private String qna_pw;
	private String qna_title;
	private String qna_content;
	private Date qna_date;
	
	
	public QnaDto(int qna_idx, String qna_name, String qna_pw, String qna_title, String qna_content, Date qna_date) {
		super();
		this.qna_idx = qna_idx;
		this.qna_name = qna_name;
		this.qna_pw = qna_pw;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_date = qna_date;
	}
	
	
}
