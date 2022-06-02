package com.study.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IOne2OneDao;

@Service
public class One2OneService {

	@Autowired
	IOne2OneDao one2oneDao;
	public int write(String one2one_name, String one2one_phone, String one2one_email, String one2one_address,
			String one2one_title, String one2one_content, String one2one_cat) {
		
		int result = one2oneDao.write(one2one_name,one2one_phone,one2one_email,one2one_address,
									  one2one_title,one2one_content,one2one_cat);
		return result;
	}

}
