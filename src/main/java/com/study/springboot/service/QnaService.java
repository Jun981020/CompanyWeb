package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IQnaDao;
import com.study.springboot.dto.QnaDto;

@Service
public class QnaService {

	@Autowired
	IQnaDao qnaDao;
	
	public int write(String qna_name, String qna_pw, String qna_title, String qna_content) {
		
		int result = qnaDao.write(qna_name,qna_pw,qna_title,qna_content);
		
		return result;
	}

	public int qna_pw_check(String qna_idx, String qna_pw_check) {
		int reusult = qnaDao.qna_pw_check(qna_idx,qna_pw_check);
		return reusult;
	}

	public List<QnaDto> list() {
		List<QnaDto> list = qnaDao.list();
		return list;
	}

	public List<QnaDto> qna_info_once(String qna_idx) {
		List<QnaDto> list = qnaDao.qna_info_once(qna_idx);
		return list;
	}

}
