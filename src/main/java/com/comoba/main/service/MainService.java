package com.comoba.main.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.comoba.main.model.MainDAO;
import com.comoba.main.model.MemberVO;

//===== #30. Service 선언 =====
@Service
public class MainService implements InterMainService {

//	===== #31. 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private MainDAO dao;

	// ====  로그인 여부 알아오기 =====
		@Override
		public int loginEnd(HashMap<String, String> map) {
			int n = dao.loginEnd(map);
			return n;
		}

		@Override
		public MemberVO getLoginMember(String userid) {
			MemberVO loginUser = dao.getLoginMember(userid);
			
			return loginUser;
		}
}
