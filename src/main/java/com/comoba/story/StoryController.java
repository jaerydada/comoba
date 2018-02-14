package com.comoba.story;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.comoba.main.service.MainService;


@Controller
@Component
public class StoryController{

/*	// ===== 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private MainService service;*/

	// ===== 공스터리 메인화면
	@RequestMapping(value = "/story/story.action", method = { RequestMethod.GET })
	public String story(HttpServletRequest req) {

		return "story/story.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/story/story.jsp 파일을 생성한다.
	}

	// ===== 공스터리 상세화면
	@RequestMapping(value = "/story/storydetail.action", method = { RequestMethod.GET })
	public String storydetail(HttpServletRequest req) {

		return "story/storydetail.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/story/storydetail.jsp 파일을 생성한다.
	}

	// ===== 스터디룸화면 만들기
	@RequestMapping(value = "/story/studyroom.action", method = { RequestMethod.GET })
	public String studyroom(HttpServletRequest req) {

		return "story/studyroom.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/story/studyroom.jsp 파일을 생성한다.
	}

}
