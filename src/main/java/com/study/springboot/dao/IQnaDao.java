package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.QnaDto;

@Mapper
public interface IQnaDao {

	public int write(String qna_name, String qna_pw, String qna_title, String qna_content);

	public List<QnaDto> list();

	public int qna_pw_check(String qna_idx, String qna_pw_check);

	public List<QnaDto> qna_info_once(String qna_idx);

}
