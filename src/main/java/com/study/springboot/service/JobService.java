package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IJobDao;
import com.study.springboot.dto.JobDto;

@Service
public class JobService {

	@Autowired
	IJobDao jobDao;
	
	public List<JobDto> list() {
		List<JobDto> list = jobDao.list();
		return list;
	}

	public List<JobDto> job_info_once(String job_idx) {
		List<JobDto> job_info_once = jobDao.job_info_once(job_idx);
		return job_info_once;
	}

}
