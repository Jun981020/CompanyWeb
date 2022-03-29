package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

@Mapper
public interface INoticeDao {

	List<NoticeDto> list();

	List<NoticeDto> noitce_info_once(String notice_idx);
	//카테고리가 타이틀일때
	List<NoticeDto> getOneNotice_title(String inputValue);
	//카테고리가 내용일때
	List<NoticeDto> getOneNotice_content(String inputValue);
	//카테고리가 작성자일때
	List<NoticeDto> getOneNotice_memberID(String inputValue);

}
