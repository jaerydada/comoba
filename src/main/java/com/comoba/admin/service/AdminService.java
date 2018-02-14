package com.comoba.admin.service;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.comoba.admin.model.AdminDAO;

//===== #30. Service 선언 =====
@Service
public class AdminService implements InterAdminService {

//	===== #31. 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private AdminDAO dao;

	@Override
	public int getstudyroom_no() {
		int Memberseq = dao.getstudyroom_no();
		return Memberseq;
	}

	@Override
	public int addStudyroom(HashMap<String, String> mapStudyroom) {
		
		int n = dao.addStudyroom(mapStudyroom);
		return n;
		
	}

	@Override
	public int addStudyroomimage(HashMap<String, String> mapStudyroomimage) {
		int n = dao.addStudyroomimage(mapStudyroomimage);
		return n;
	}
	
}
