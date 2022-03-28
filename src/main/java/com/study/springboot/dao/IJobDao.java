package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.JobDto;

@Mapper
public interface IJobDao {

	List<JobDto> list();

	List<JobDto> job_info_once(String job_idx);

}
