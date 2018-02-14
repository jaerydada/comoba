package com.comoba.myroom;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.comoba.main.service.MainService;

@Controller
@Component
public class MyRoomController {

	// ===== 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private MainService service;

	// ===== 스케쥴(달력) 페이지 요청
	@RequestMapping(value = "/myroom/schedule.action", method = { RequestMethod.GET })
	public String schedule(HttpServletRequest req) {

		return "/myroom/schedule.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/intro.jsp 파일을 생성한다.
	}

	// ===== 스케쥴 작성 페이지 요청
	@RequestMapping(value = "/myroom/caldetail.action", method = { RequestMethod.GET })
	public String caldetail(HttpServletRequest req) {

		return "/myroom/caldetail.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/intro.jsp 파일을 생성한다.
	}

	// ===== 스케쥴 작성 페이지 요청
	@RequestMapping(value = "/myroom/calwrite.action", method = { RequestMethod.GET })
	public String calwrite(HttpServletRequest req) {

		return "/myroom/calwrite.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/intro.jsp 파일을 생성한다.
	}

	// ===== 스토리 작성 페이지 요청
	@RequestMapping(value = "/myroom/storywrite.action", method = { RequestMethod.GET })
	public String storywrite(HttpServletRequest req) {

		return "/myroom/storywrite.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/intro.jsp 파일을 생성한다.
	}

	// ===== 라이브 작성 페이지 요청
	@RequestMapping(value = "/myroom/livewrite.action", method = { RequestMethod.GET })
	public String livewrite(HttpServletRequest req) {

		return "/myroom/livewrite.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/intro.jsp 파일을 생성한다.
	}

	// ===== 내공부현황 페이지 요청
	@RequestMapping(value = "/myroom/state.action", method = { RequestMethod.GET })
	public String state(HttpServletRequest req) {

		return "/myroom/state.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/intro.jsp 파일을 생성한다.
	}

	// =====  내 방 폼 페이지 요청 
    @RequestMapping(value="/myroom/myroom.action", method={RequestMethod.GET})
    public String myroom(HttpServletRequest req) {
    	
    	return "myroom/myroom.tiles";
    	// /Comoba/src/main/webapp/WEB-INF/views/myroom/myroom.jsp 파일을 생성한다.
    }
	
}
