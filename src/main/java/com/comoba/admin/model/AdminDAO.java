package com.comoba.admin.model;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


//===== #28. DAO 선언 =====
@Repository
public class AdminDAO implements InterAdminDAO {

//	===== #29. 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private SqlSessionTemplate sqlsession;

	@Override
	public int getstudyroom_no() {
		int studyroom_no = sqlsession.selectOne("main.getstudyroom_no");
		return studyroom_no;
	}

	@Override
	public int addStudyroom(HashMap<String, String> mapStudyroom) {
		int n = sqlsession.insert("main.addStudyroom", mapStudyroom);
		return n;
	}
	
	@Override
	public int addStudyroomimage(HashMap<String, String> mapStudyroomimage) {
		int n = sqlsession.insert("main.addStudyroomimage", mapStudyroomimage);
		return n;
	}

	
	
	
}
