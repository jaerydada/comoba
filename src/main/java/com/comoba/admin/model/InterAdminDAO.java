package com.comoba.admin.model;

import java.util.HashMap;

//model단(DAO)의 인터페이스 생성
public interface InterAdminDAO {


	int getstudyroom_no();	//admin 계정의 회원번호 를 가져오는 메소드 생성
	
	int addStudyroom(HashMap<String, String> mapStudyroom);
	
	int addStudyroomimage(HashMap<String, String> mapStudyroomimage);
	
	
}
