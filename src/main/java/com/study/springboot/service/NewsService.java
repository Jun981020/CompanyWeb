package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.INewsDao;
import com.study.springboot.dto.NewsDto;

@Service
public class NewsService {

	@Autowired
	INewsDao newsDao;
	
	public List<NewsDto> list() {
		List<NewsDto> list = newsDao.list();
		return list;
	}

	public List<NewsDto> news_info_once(String news_idx) {
		List<NewsDto> news_info_once = newsDao.news_info_once(news_idx);
		return news_info_once;
	}

	
}
