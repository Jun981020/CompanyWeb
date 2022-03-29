package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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

	public Model getOneNoticeList(String cat, String inputValue ,Model model) {
		//카테고리가 무었인지 분류
		switch (cat) {
		case "notice_title":
			List<NoticeDto> list_title = noticeDao.getOneNotice_title(inputValue);
			model.addAttribute("list", list_title);
			break;
		case "notice_content":
			List<NoticeDto> list_content = noticeDao.getOneNotice_title(inputValue);
			model.addAttribute("list", list_content);
			break;
		case "notice_member_id":
			List<NoticeDto> list_member_id = noticeDao.getOneNotice_title(inputValue);
			model.addAttribute("list", list_member_id);
			break;
		}
		return model;
	}

	
}
