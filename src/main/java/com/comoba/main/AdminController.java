package com.comoba.main;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.comoba.admin.service.AdminService;
import com.comoba.main.FileManager;


@Controller
@Component
public class AdminController {

//	===== #33. 의존객체 주입하기(DI : Dependency Injection) ===== 
    @Autowired
	private AdminService service;
    
    @Autowired
	private FileManager fileManager;
    
    @Autowired
	private ThumbnailManager thumbnailManager;
    
    
    // ===== #맴버관리 페이지 요청. =====
    @RequestMapping(value="/admin/memberManagement.action", method={RequestMethod.GET})
    public String memberManagement(HttpServletRequest req) {
    
    	
    	return "admin/memberManagement.tiles";
    	// /comoba/src/main/webapp/WEB-INF/views/admin/memberManagement.jsp 파일을 생성한다.
    }
    
    
    // ===== #공스토리룸 추가하는  페이지 요청. =====
       @RequestMapping(value="/admin/addStudyroom.action", method={RequestMethod.GET})
       public String addStudyroom(HttpServletRequest req) {
       
       	
       	return "admin/addStudyroom.tiles";
       	// /Board/src/main/webapp/WEB-INF/views/admin/addStudyroom.jsp 파일을 생성한다.
       }
       
       
       // ===== #공스토리룸 추가하는  페이지 요청. =====
          @RequestMapping(value="/admin/addStudyroomEnd.action", method={RequestMethod.POST})
          public String addStudyRoom(MultipartHttpServletRequest req , HttpServletResponse res) {
          
            String studyroom_no = String.valueOf(service.getstudyroom_no()); // 먼저 관리자 FK번호 채번해오기
            
            System.out.println("studyroom_no : "+studyroom_no);
            
      		String studyroom_name = req.getParameter("studyroom_name");
      		String addr1 = req.getParameter("addr1");
      		String addr2 = req.getParameter("addr2");
      		String hp = req.getParameter("hp");
      		String cost = req.getParameter("cost");
      		String latitude = req.getParameter("latitude");
      		String longitude = req.getParameter("longitude");
      		List<MultipartFile> attachList = req.getFiles("attach");
        	  
      		HashMap<String, String> mapStudyroom = new HashMap<String, String>();
      		mapStudyroom.put("studyroom_name", studyroom_name);
      		mapStudyroom.put("addr1", addr1);
      		mapStudyroom.put("addr2", addr2);
      		mapStudyroom.put("hp", hp);
      		mapStudyroom.put("cost", cost);
      		mapStudyroom.put("studyroom_no", studyroom_no);
      		mapStudyroom.put("latitude", latitude);
    		mapStudyroom.put("longitude", longitude);
    		
    		List<HashMap<String, String>> mapStudyroomimageList = new ArrayList<HashMap<String, String>>();
    		if(attachList != null) {
    			// WAS 의 webapp 의 절대경로를 알아와야 한다. 
    			HttpSession session = req.getSession();
    			String root = session.getServletContext().getRealPath("/"); 
    			String path = root + "resources"+File.separator+"files";
    			// path 가 첨부파일들을 저장할 WAS(톰캣)의 폴더가 된다. 
    			
    			String newFileName = "";
    			// WAS(톰캣) 디스크에 저장할 파일명 
    			
    			byte[] bytes = null;
    			// 첨부파일을 WAS(톰캣) 디스크에 저장할때 사용되는 용도 
    			
    			long fileSize = 0;
    			// 파일크기를 읽어오기 위한 용도
    			
    			String thumbnailFileName = ""; 
    			// WAS 디스크에 저장될 thumbnail 파일명 
    			
    			for(int i=0; i<attachList.size(); i++) {
    				try {
    					 bytes = attachList.get(i).getBytes();
    					 
    					 newFileName = fileManager.doFileUpload(bytes, attachList.get(i).getOriginalFilename(), path);
    					 
    					 fileSize = attachList.get(i).getSize();
    					 
    					// === >>>> thumbnail 파일 생성을 위한 작업 <<<<    =========  //
    					 thumbnailFileName = thumbnailManager.doCreateThumbnail(newFileName, path); 
    					// ===================================================  //
    					 
    					 HashMap<String, String> mapProductimage = new HashMap<String, String>();
    					 
    					 System.out.println();
    					 
    					 
    					 mapProductimage.put("fk_studyroom_no", studyroom_no);
    					 mapProductimage.put("imagefilename", newFileName);
    					 mapProductimage.put("imageorgFilename", attachList.get(i).getOriginalFilename());
    					 mapProductimage.put("imagefileSize", String.valueOf(fileSize));
    					 mapProductimage.put("thumbnailFileName", thumbnailFileName);
    					 
    					 
    					 System.out.println("fk_studyroom_no : "+ studyroom_no );
    					 System.out.println("imagefilename : "+ newFileName );
    					 System.out.println("imageorgFilename : "+ attachList.get(i).getOriginalFilename() );
    					 System.out.println("imagefileSize : "+ String.valueOf(fileSize) );
    					 System.out.println("thumbnailFileName : "+ thumbnailFileName );
    					 
    					 mapStudyroomimageList.add(mapProductimage);
    					 
    				} catch (Exception e) {
    					
    				}
    				
    			}// end of for-------------------------
    			
    		}// end of if------------------------------
    		
    		  // **** 폼에서 입력받은 제품입력정보 값을 
    		  //      Service 단으로 넘겨서 테이블에 insert 하기로 한다.
    			   
    		       // 이미지파일첨부가 없는 경우 또는 이미지파일첨부가 있는 경우로 나누어서
    			   // Service 단으로 호출하기
    			   int n = 0;
    			   int m = 0;
    			   int count = 0;
    			   
    			   if(attachList == null) { // 파일 첨부된것이 없다면
    				   n = service.addStudyroom(mapStudyroom);
    			   }
    			   else if(attachList != null) { // 파일 첨부된것이 있다면
    				   n = service.addStudyroom(mapStudyroom);
    				   
    				   for(int i=0; i<mapStudyroomimageList.size(); i++) {
    					   m = service.addStudyroomimage(mapStudyroomimageList.get(i));
    					   if(m==1) count++;
    				   }
    				   
    				   if(mapStudyroomimageList.size() == count) {
    					   n=1;
    				   }
    				   else {
    					   n=0;
    				   }
    			   }
    			   			   
    			   String msg = "";
    			   String loc = "";
    			   if(n==1) {
    				   msg = "제품입력 성공!!";
    				   loc = "/main/intro.action";
    			   }
    			   else {
    				   msg = "제품입력 실패!!";
    				   loc = "javascript:history.back();";
    			   }
    			    		
    			   req.setAttribute("msg", msg);
    			   req.setAttribute("loc", loc);
    				
    			   return "msg.notiles";
    		
          	//return "admin/addStoryroomEnd.tiles";
          	// /Board/src/main/webapp/WEB-INF/views/admin/boardManagement.jsp 파일을 생성한다.
          };
          
       
       // ===== #자유게시판 관리하는  페이지 요청. =====
       @RequestMapping(value="/admin/boardManagement.action", method={RequestMethod.GET})
       public String boardManagement(HttpServletRequest req) {
       
       	
       	return "admin/boardManagement.tiles";
       	// /Board/src/main/webapp/WEB-INF/views/admin/boardManagement.jsp 파일을 생성한다.
       };
    
  
       
       
    // ===== #게시물 현황 보는 페이지 요청. =====
       @RequestMapping(value="/admin/boardCnt.action", method={RequestMethod.GET})
       public String boardCnt(HttpServletRequest req) {
       
       	
       	return "admin/boardCnt.tiles";
       	// /Board/src/main/webapp/WEB-INF/views/admin/boardCnt.jsp 파일을 생성한다.
       };
    
	
}
