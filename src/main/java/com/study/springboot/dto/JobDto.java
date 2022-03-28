package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class JobDto {

	private int job_idx;
	private String job_title;
	private String job_content;
	private String job_memver_id;
	private Date job_date;
	
	
	public JobDto(int job_idx, String job_title, String job_content, String job_memver_id, Date job_date) {
		super();
		this.job_idx = job_idx;
		this.job_title = job_title;
		this.job_content = job_content;
		this.job_memver_id = job_memver_id;
		this.job_date = job_date;
	}
	
	
}
