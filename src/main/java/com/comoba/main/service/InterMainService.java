package com.comoba.main.service;

import java.util.HashMap;

import com.comoba.main.model.MemberVO;

public interface InterMainService {

	
	int loginEnd(HashMap<String,String> map); 		// 로그인 여부 알아오기
	
	MemberVO getLoginMember(String userid);
	
}
