package com.comoba.story.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.comoba.story.model.StoryDAO;

//===== #30. Service 선언 =====
@Service
public class StoryService implements InterStoryService {

//	===== #31. 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private StoryDAO dao;
	
}
