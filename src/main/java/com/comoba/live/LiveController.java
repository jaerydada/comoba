package com.comoba.live;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.comoba.main.service.MainService;

@Controller
@Component
public class LiveController {

/*	// ===== 의존객체 주입하기(DI : Dependency Injection) ===== 
    @Autowired
	private MainService service;*/
	
    // ===== 라이브페이지 폼 요청
    @RequestMapping(value="/live/live.action", method={RequestMethod.GET})
	public String live(HttpServletRequest req){
		
		return "live/live.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/live/live.jsp
	}
    
    // ===== 라이브 상세 페이지 폼 요청
    @RequestMapping(value="/live/livedetail.action", method={RequestMethod.GET})
	public String livedetail(HttpServletRequest req){
		
		return "live/livedetail.tiles";
		// /Comoba/src/main/webapp/WEB-INF/views/live/livedetail.jsp
	}
}
