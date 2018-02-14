package com.comoba.myroom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.comoba.myroom.model.MyroomDAO;

//===== #30. Service 선언 =====
@Service
public class MyroomService implements InterMyroomService {

//	===== #31. 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private MyroomDAO dao;
	
}
