package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

@Mapper
public interface INoticeDao {

	List<NoticeDto> list();

	List<NoticeDto> noitce_info_once(String notice_idx);

}
