package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dto.NoticeDto;

@Service
public class NoticeService {

	@Autowired
	INoticeDao noticeDao;
	
	public List<NoticeDto> list() {
		
		List<NoticeDto> list = noticeDao.list();
		return list;
	}

	public List<NoticeDto> notice_info_once(String notice_idx) {
		List<NoticeDto> notice_info_once = noticeDao.noitce_info_once(notice_idx);
		return notice_info_once;
	}

	
}
