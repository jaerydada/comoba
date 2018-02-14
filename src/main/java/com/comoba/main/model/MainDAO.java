package com.comoba.main.model;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//===== #28. DAO 선언 =====
@Repository
public class MainDAO implements InterMainDAO{

//	===== #29. 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private SqlSessionTemplate sqlsession;


	// #47. 로그인 여부 알아오기
	   @Override
	   public int loginEnd(HashMap<String, String> map) {
	     int n = sqlsession.selectOne("main.loginEnd", map);
	      return n;
	   }

// ===== #50. 로그인 성공한 사용자 정보 가져오기 =====
	@Override
	public MemberVO getLoginMember(String userid) {
		MemberVO loginUser = sqlsession.selectOne("main.getLoginMember", userid);
	      return loginUser;
	}


}
