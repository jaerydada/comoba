package com.comoba.ourroom;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.comoba.ourroom.service.OurroomService;

@Controller
@Component
public class OurroomController {

//	===== 의존객체 주입하기(DI : Dependency Injection) ===== 
    @Autowired
	private OurroomService service;
    
    
    
	  // ===== 스터디룸찾기 만들기
	  @RequestMapping(value="/ourroom/studysearch.action", method={RequestMethod.GET})
	    public String index(HttpServletRequest req) {
	    	
	    	return "ourroom/studysearch.tiles";
	      //	/Comoba/src/main/webapp/WEB-INF/views/ourroom/studysearch.jsp 파일을 생성한다.
	  }
	  
	  
    
	  // ===== 자유게시판
	  @RequestMapping(value="/ourroom/freeboard.action", method={RequestMethod.GET})
	    public String freeboard(HttpServletRequest req) {
	    	
	    	return "ourroom/freeboard.tiles";
	    	   //	/Comoba/src/main/webapp/WEB-INF/views/ourroom/freeboard.jsp 파일을 생성한다.
	    }
	  
	  
	  
	  
	  // =====  Q&A   이거먼저 !!
	    @RequestMapping(value="/ourroom/qna.action", method={RequestMethod.GET})
	    public String login(HttpServletRequest req) {
	    	
	    	return "ourroom/qna.tiles";
	    	   //	/Comoba/src/main/webapp/WEB-INF/views/ourroom/qa.jsp 파일을 생성한다.
	    }
		
	    
	    
	    // =====  Q&A   글쓰기
	    @RequestMapping(value="/ourroom/add.action", method={RequestMethod.GET})
	    public String add(HttpServletRequest req) {
	    	
	    	return "ourroom/add.tiles";
	    	   //	/Comoba/src/main/webapp/WEB-INF/views/ourroom/qa.jsp 파일을 생성한다.
	    }
		

}
