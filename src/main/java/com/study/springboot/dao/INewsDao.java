package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NewsDto;

@Mapper
public interface INewsDao {

	List<NewsDto> list();

	List<NewsDto> news_info_once(String news_idx);

	
}
