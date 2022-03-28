package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IFaqDao;
import com.study.springboot.dto.FaqDto;

@Service
public class FaqService {

	@Autowired
	IFaqDao faqDao;
	
	
	public List<FaqDto> list() {
		List<FaqDto> list = faqDao.list(); 
		return list;
	}


	public FaqDto view(int faq_idx) {
		FaqDto dto = faqDao.view(faq_idx);
		return dto;
	}


	
}
