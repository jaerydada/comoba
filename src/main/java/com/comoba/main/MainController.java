package com.comoba.main;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.comoba.main.model.MemberVO;
import com.comoba.main.service.MainService;

@Controller
@Component
public class MainController {

//   ===== 의존객체 주입하기(DI : Dependency Injection) ===== 
    @Autowired
   private MainService service;
    
     // ===== c1. 초기 페이지 요청 
     @RequestMapping(value="/index.action", method={RequestMethod.GET})
       public String index(HttpServletRequest req) {
          
          return "index.notiles";
          // /Comoba/src/main/webapp/WEB-INF/views/intro.jsp 파일을 생성한다.
       }
     

     // ===== c2. 메인 페이지 요청 
     @RequestMapping(value="/intro.action", method={RequestMethod.GET})
       public String intro(HttpServletRequest req) {
          
          return "intro/intro.tiles";
          // /Comoba/src/main/webapp/WEB-INF/views/intro.jsp 파일을 생성한다.
       }
   
     
     // =====  로그인 폼 페이지 요청 
       @RequestMapping(value="/login.action", method={RequestMethod.GET})
       public String login(HttpServletRequest req) {
          
          return "login/loginform.tiles";
          // /Board/src/main/webapp/WEB-INF/views/login/loginform.jsp 파일을 생성한다.
       }
      
       // =====  회원가입 폼 페이지 요청 
       @RequestMapping(value="/register.action", method={RequestMethod.GET})
       public String register(HttpServletRequest req) {
          
          return "login/registerform.tiles";
          // /Board/src/main/webapp/WEB-INF/views/login/loginform.jsp 파일을 생성한다.
       }
       
       // =====  게시글 상세  폼 페이지 요청 
       @RequestMapping(value="/writedetail.action", method={RequestMethod.GET})
       public String writedetail(HttpServletRequest req) {
          
          return "writedetail/writedetailform.tiles";
          // /Board/src/main/webapp/WEB-INF/views/login/loginform.jsp 파일을 생성한다.
       }
       
       // ===== #45. 로그인 완료 요청
      
       @RequestMapping(value="/loginEnd.action", method={RequestMethod.POST})
       public String loginEnd(HttpServletRequest req, MemberVO loginuser, HttpSession session) {
          // 

          String userid = req.getParameter("userid");
          String pwd = req.getParameter("pwd");
          System.out.println("userid="+userid+"pwd"+pwd);
          
          HashMap<String, String> map = new HashMap<String, String>();

          map.put("userid", userid);
          map.put("pwd", pwd);
          
           /*
              로그인을 하려면 아이디와 암호가 암호화되어 DB에 저장되어진 것과 일치할때만 로그인이 되어지도록 해야 한다.
              서비스단에서 로그인 여부 결과를 int 타입(1 or 0 or -1)으로 받아오겠다.
           
           */
          
          int n = service.loginEnd(map);
          //넘겨받은 n값이 1이면 아이디와 암호가 일치
          // 0이면 아이디만 일치
          // -1이면 둘다 x
          
          req.setAttribute("n", n);
          
          if(n==1){
             loginuser = service.getLoginMember(userid);
             session.setAttribute("loginuser", loginuser);
             
             //로그인을 하지 않은 상태에서 글쓰기, 글수정, 글삭제를 했을때 현재 페이지의 주소를 세션에 "url" 이라는 키값으로
             //저장해둔 현재 페이지의 주소를 읽어온다.
             
             String url = (String)session.getAttribute("url");
             req.setAttribute("url", url);
          }
      
          return "login/loginEnd.tiles";
          // /Board/src/main/webapp/WEB-INF/views/login/loginform.jsp 파일을 생성한다.
       }
       
       
       // ===== #53. 로그아웃 완료 요청 
       @RequestMapping(value="/logout.action", method={RequestMethod.GET})
       public String logout(HttpServletRequest req, HttpSession session) {
          
          session.invalidate();
          
          return "login/logout.tiles";
          // /Board/src/main/webapp/WEB-INF/views/login/logout.jsp 파일을 생성한다.
       }
}