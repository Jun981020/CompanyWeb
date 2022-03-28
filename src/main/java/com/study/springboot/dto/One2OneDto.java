	package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class One2OneDto {

	private int one2one_ids;
	private String one2one_name;
	private String one2one_phone;
	private String one2one_email;
	private String one2one_address;
	private String one2one_title;
	private String one2one_content;
	private Date one2one_date;
	
	
	
	public One2OneDto(int one2one_ids, String one2one_name, String one2one_phone, String one2one_email,
			String one2one_address, String one2one_title, String one2one_content, Date one2one_date) {
		super();
		this.one2one_ids = one2one_ids;
		this.one2one_name = one2one_name;
		this.one2one_phone = one2one_phone;
		this.one2one_email = one2one_email;
		this.one2one_address = one2one_address;
		this.one2one_title = one2one_title;
		this.one2one_content = one2one_content;
		this.one2one_date = one2one_date;
	}
	
	
	
	
	
}
