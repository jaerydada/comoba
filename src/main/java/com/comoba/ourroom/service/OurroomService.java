package com.comoba.ourroom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.comoba.ourroom.model.OurroomDAO;


//=====  Service 선언 =====
@Service
public class OurroomService implements InterOurroomService {

//	=====  의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private OurroomDAO dao;

}