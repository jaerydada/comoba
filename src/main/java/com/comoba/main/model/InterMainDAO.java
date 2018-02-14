package com.comoba.main.model;

import java.util.HashMap;

public interface InterMainDAO {

	int loginEnd(HashMap<String, String> map);			// 로그인 여부 알아오기
	
	MemberVO getLoginMember(String userid);
}
