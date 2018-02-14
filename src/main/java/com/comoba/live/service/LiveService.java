package com.comoba.live.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.comoba.live.model.LiveDAO;

//===== #30. Service 선언 =====
@Service
public class LiveService implements InterLiveService {

//	===== #31. 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private LiveDAO dao;
	
}
