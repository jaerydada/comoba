package com.comoba.admin.service;

import java.util.HashMap;

//Service 단 인터페이스 선언
public interface InterAdminService {

	
	int getstudyroom_no();  //admin 계정의 회원번호 를 가져오는 메소드 생성
	
	int addStudyroom(HashMap<String, String> mapStoryroom); // cmb_studyroom 에 스토리룸을 추가하는 메소드 생성 
	
	int addStudyroomimage(HashMap<String, String> mapStoryroomimage); //cmb_studyroom_addfile 에 스토리룸을 추가하는 메소드 생성 
	
}
