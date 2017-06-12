package com.spring.springGITtest1;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestMethod;
=======
>>>>>>> branch 'master' of https://github.com/yangmo112/springGITTest1

import com.spring.springGITtest1.service.SpringGITtest1Service;

//===== #32. 컨트롤러 선언 =====
@Controller
@Component
//XML 에서 빈을 만드는 대신에 클래스명 앞에 @Component 어노테이션을 적어주면 해당 클래스는 
//bean으로 자동 등록된다. 그리고 bean의 이름(첫글자는 소문자)은 해당 클래스 명이 된다.
//그럼 여기서는 boardController 일듯
public class SpringGITtest1Controller {

//	===== #33. 의존객체 주입하기(DI : Dependency Injection) ===== 
    @Autowired
	private SpringGITtest1Service service;
 
//  테스트
//    @RequestMapping(value="/hello.action", method="{request}")
//    public String hello(HttpServletRequest req)
    
<<<<<<< HEAD
    // 테스트
    @RequestMapping(value="/hello.action", method="")
    public String hello(HttpServletRequest req){
    	req.setAttribute("name", "유원제");
    	req.setAttribute("age", 25);
    	req.setAttribute("addr", "경기도 수원시");
    }
=======
    
    //테스트
   @RequestMapping(value="/hello.action", method={RequestMethod.GET})
   public String hello(HttpServletRequest req){

   req.setAttribute("name", "박월성");
   req.setAttribute("age", 35);
   req.setAttribute("addr", "서울시 서초구");
  
   return "test/hello.tiles";
<<<<<<< HEAD
   }
}
=======
>>>>>>> branch 'master' of https://github.com/yangmo112/springGITTest1
}
>>>>>>> branch 'master' of https://github.com/yangmo112/springGITTest1
