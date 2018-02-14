<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">

/* #3498db */

.star{
   width: 20px;
   height: 20px;
}

.clock{
   width: 40px;
   height: 40px;
}

.clock-position{
   position:absolute; top:15px; right:15px;
}


</style>
    
  
 
 <!--Requirement jQuery-->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<!--Load Script and Stylesheet -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/ty/jquery.simple-dtpicker.js"></script>
	<link type="text/css" href="<%=request.getContextPath() %>/resources/ty/jquery.simple-dtpicker.css" rel="stylesheet" />
 
   <!--masonary js-->
        <script src="<%= request.getContextPath() %>/resources/js/jquery.masonry.min.js" type="text/javascript"></script>
        
               
        <!--customizable plugin edit according to your needs-->

        <script src="<%= request.getContextPath() %>/resources/js/masonary-custom.js" type="text/javascript"></script>
 
<style type="text/css">

#myroomtab{
   width: 100%;
}

#mycontent{
   background-color: black;
}

.ty_tab{
   border: 1px solid #b3b3b3;
   width: 33%;
   text-align: center;
   line-height: 40px;
}


.row{
   margin-bottom: 1%;
   
}

.myroom_story{
   width: 23%;
   margin-right: 1%;
   float: left;
}

.myroom_storynum{
   font-size: 9pt;
   color: #b3b3b3;
}

.ty_red{
   font-size: 22pt; font-weight: bold; color: #e74c3c;
}

.ty_green{
   font-size: 22pt; font-weight: bold; color: #33c961;
}

.ty_blue{
   font-size: 22pt; font-weight: bold; color: #3498db;
}

.ty_black{
   font-size: 14pt; font-weight: bold; color: black;
}

.ty_gray{
   font-size: 12pt; font-weight: bold; color: #b3b3b3;
}

	.ty_font{
  		font-size: 12pt;
  	}
  
  	.ty_top{
  	vertical-align: top;
  }
  	
  	.ty_form{
  		width: 60%;
  	}
  

#myroom_mycurrent{
   
   text-align: center;
   
}

#myroom_mycurrent table{
   width: 99%;
}

#myroom_mycurrent td{
   width: 33%;
   line-height: 30px;
}

</style>
<script type="text/javascript">


$(document).ready(function() {

	showNowTime();
		
});	// end of $(document).ready(function()-----------------	
		
function showNowTime() {
	   
   var now = new Date();

   var month = "";
   if(now.getMonth()+1 < 10){
	   month = "0"+(now.getMonth()+1);
   }
   else{
	   month = ""+(now.getMonth()+1);
   }
   
   var strNow = now.getFullYear() + "-" + month + "-" + now.getDate();
   
   var hour = "";
   if(now.getHours() < 10){
	   hour = "0"+now.getHours();
   }
   else{
	   hour = ""+now.getHours();
   }
   
   var minute = "";
   if(now.getMinutes() < 10) {
      minute = "0"+now.getMinutes();
   } else {
      minute = ""+now.getMinutes();
   }
   
 
   strNow += " " + hour + ":" + minute;
   
   $("#start").val(strNow);

}// end of function showNowTime() -----------------------------
		
var cnt = 0;
var filenamearr = new Array();
var filesizearr = new Array();

function addFile(){
    var x = document.getElementById("myFile");
    var txt = "";
	var files = "";
    if ('files' in x) {
        if (x.files.length == 0) {
            txt = "Select one or more files.";
        } else {
            for (var i = 0; i < x.files.length; i++) {

                txt += "<br><strong>" + (cnt+1) + ". 파일</strong> <img src='<%= request.getContextPath() %>/resources/images/roomlive/close-cross.png' onClick='goDelete();' style='margin-left: 150px;' width='10px' height='10px'/><br>";
                var file = x.files[i];
                if ('name' in file) {
                //	filenamearr[cnt] = file.name;
                //	files += "<input type='hidden' name='filename' value='"+file.name+"'>";
                    txt += "이름: " + file.name + "<br>";
                }
                if ('size' in file) {
                //	filesizearr[cnt] = file.size;
                //	files += "<input type='hidden' name='filesize' value='"+file.size+"'>";
                    txt += "크기: " + file.size + " bytes";
                }
                cnt++;
            }
        }
       
    } 
    else {
        if (x.value == "") {
            txt += "Select one or more files.";
        } else {
            txt += "The files property is not supported by your browser!";
            txt  += "<br>The path of the selected file: " + x.value; // If the browser does not support the files property, it will return the path of the selected file instead. 
        }
    }
    document.getElementById("demo").innerHTML += txt;
	document.getElementById("fileattach").innerHTML += files;
}


function goDelete(){
		
	// 불가능해ㅡㅡ
}


	function goOnair(){
		
		var start = document.getElementById("start").value;
		var finish = document.getElementById("finish").value; 
		var link = document.getElementById("gonglink").value;
		
		if(link.trim()==""){
			alert("영상링크는 필수입력사항입니다!");
			return;
		}
		
		if(start==finish){
			alert("종료시간을 다시 설정해주세요!");
			return;
		}
		
		
		var liveonairFrm = document.liveonairFrm;
		liveonairFrm.submit();
		
	}





	var reload = window.showModalDialog(url,'message',options);
 			if(reload){fncRefrash();}


       window.returnValue = true;
       window.close();


   	function goClose(){
   		
   		$("#myroomlivewrite").modal("hide");
   		$("#myroomliveonair").modal("hide");
   	}
   	
   	

</script>


<div class="divide80"></div>

   <div class="container">
   
   <div id="myroom_myprofile" style="float: left; width: 50%; height: 100px;">
      <div style="float: left; width: 70px; height: 70px;">
         <img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 60px; height: 60px;">
      </div>&nbsp;
      <div style="float: left; width: 50%;">
         <span style="font-weight: bold; font-size: 13pt; color: white;">열공이</span>&nbsp;&nbsp;
         <a href="<%=request.getContextPath()%>/myroom/myroom.action"><img src="<%= request.getContextPath() %>/resources/images/myroom/tv.png" alt="" style="width: 30px; height: auto;"></a>
         <br/>
         <span style="font-size: 11pt; color: #c0c0c0;">yeolgong@naver.com</span>
      </div>
   </div>
   
   <div id="myroom_mycurrent" style="float: right;  width: 40%; height: 100px;">
      <table>
         <tr>
            <td><span class="ty_red">237</span><span style="color: white;">h</span><span class="ty_red">38</span><span style="color: white;">m</span></td>
            <td><span class="ty_green">132</span><span style="color: white;">days</span></td>
            <td><span class="ty_blue">150</span></td>
         </tr>
         <tr>
            <td><span class="ty_gray">절대공부시간</span></td>
            <td><span class="ty_gray">출석일수</span></td>
            <td><span class="ty_gray">팔로워</span></td>
         </tr>
      </table>
   </div>
   
   
   <div class="divide30" style="clear: both;"></div>
      <span>대구 고삼이입니다^3^</span>
      
      <div class="divide60"><a data-toggle="modal" data-target="#myroomlivewrite" data-dismiss="modal"><span style="float: right">
            <img src="<%= request.getContextPath() %>/resources/img/sm/edit.png" width="auto;" height="27px;"></span></a>
                                        
        </div>
      
        <div>
  
            <div    style="float: left; margin-left: 35px; border-bottom: 2px solid red;">
              <a href="#tb1" aria-controls="tb1" role="tab" data-toggle="tab"> 
                내 라이브<span class="myroom_storynum">[52]</span></a>
              
            </div>
            
            
            
            <div class="divide30"></div>
            
            <!-- Tab panes -->
            <div class="tab-content">
            
            <!-- 내 게시물 -->
                 <div role="tabpanel" class="tab-pane active" id="tb1">
                          <div class="divide80"></div>
    
    <div class="blog-masonary-wrapper">
        <div class="container mas-boxes">
        
        <c:if test="${livelist == null}">
        	<h4 style="font-color: white;">"지금 공라이브를 추가해보세요:)"</h4>
        </c:if>
        <c:if test="${livelist != null}">
        	<c:forEach var="map" items="${livelist}">
        	
            <div class="mas-boxes-inner ty_box">
                   <img src="<%=request.getContextPath() %>/resources/files/${map.FILENAME}" alt="" class="img-responsive">
                <div class="clock-position">
                  <%--  <a data-toggle="modal" data-target="#myroomliveonair" data-dismiss="modal"><img class="clock" id="clock" src="<%= request.getContextPath() %>/resources/images/live/clock.png" alt="" data-gonglink="${map.GONG_LINK}" data-gongliveno="${map.LIVE_NO}" ></a> --%>
   					
                </div>
                <div class="mas-blog-inner">
                    <h3 style="float: left;"><a href="<%= request.getContextPath() %>/live/livedetail.action">${map.GONG_TITLE}</a></h3>
                    <div style="float: right; border: 1px solid red;">
                    <a data-toggle="dropdown" class="dropdown-toggle"><img src="<%= request.getContextPath() %>/resources/images/live/more-button.png" alt="" data-gonglink="${map.GONG_LINK}" data-gongliveno="${map.LIVE_NO}" ></a>
   					<ul class="dropdown-menu" style="right: auto; left: 0;" role="menu">
	   					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">HTML</a></li>
	      				<li role="presentation"><a role="menuitem" tabindex="-1" href="#">CSS</a></li>
      				</ul>
      				</div>
                    <ul class="list-inline post-detail" style="clear: both;">
                        <li>by <a href="#">${map.NICKNAME}</a></li>
                        <li><i class="fa fa-calendar"></i> ${map.WRITEDATE}</li>                            
                    </ul>
                    <p>
                        ${map.GONGLIVE_CONTENTS}
                    </p>
                    <div align="right"><img class="star" src="<%= request.getContextPath() %>/resources/images/live/star1.png">&nbsp;4.5</div>
                </div><!--blog inner-->
            </div>
            </c:forEach>
           </c:if>    
             
         
        </div>
        <div class="container">
               
            <ul class="pager">
            <li class="previous"><a href="#">← Previous Page</a></li>
            <li class="next"><a href="#">Next Page →</a></li>
        </ul>
        </div>
    </div><!--masonary wrapper-->
    <div class="divide60"></div>
                      
                  </div>
              
            </div>

       </div>
        
   </div>
   
   <div class="divide60"></div>
   
  <%-- 라이브작성 Modal --%>
<div class="modal fade" id="myroomlivewrite" role="dialog">
	<div class="modal-dialog">
	
	 <%-- Modal content--%>
      <div class="modal-content">
      <div align="right">
      	<img src="<%= request.getContextPath() %>/resources/images/roomlive/close-cross.png" onClick="goClose();" 
      	style="margin-top: 3%; margin-right: 3%;" width="20px" height="20px"/>
      	</div>
        <div class="modal-body" style="height: 620px; width: 100%;">
          <div id="writelive" align="center">
          	<iframe style="border: none; width: 100%; height:600px;" src="<%=request.getContextPath()%>/myroom/livewritemodal.action"></iframe>
          </div>
        </div>
      </div>
	</div>
</div> 


 <%-- 라이브방송 시작 Modal --%>
<div class="modal fade" id="myroomliveonair" role="dialog">
	<div class="modal-dialog">
	 <%-- Modal content--%>
      <div class="modal-content">
      <div align="right">
      	<img src="<%= request.getContextPath() %>/resources/images/roomlive/close-cross.png" onClick="goClose();" 
      	style="margin-top: 3%; margin-right: 3%;" width="20px" height="20px"/>
      	</div>
        <div class="modal-body" id="modal-body" style="height: 500px; width: 100%;">
          <div id="writelive" align="center">
          	<div>
	         <div class="panel">
	             <div >
	                 <div class="row mail-header">
	                     <div style="margin-top: -10px;">
	                         <h3>방송 시작하기</h3>
	                     </div>
	              
	                 </div>
	                 <hr>
	                 <div class="space-20"></div>
	                 <div style="padding-left: 5%; padding-right: 5%;" >
	                 
	                 <form name="liveonairFrm" method="post" action="<%= request.getContextPath() %>/myroom/liveonairEnd.action" enctype="multipart/form-data"> 
						<input type="hidden" name="liveno_fk" id="liveno_fk" value=""/>
	                   <table id="writelivetbl" style="width: 90%;">
	               
	                   <tr>
	                   	<th class="ty_top">
	                   	시작시간&nbsp; :  &nbsp;
	                   	</th>
	                   	<td class="form-group">
	                   		<input type="text" id="start" name="start" class="form-control ty_font ty_form" readonly/>
	                   	</td>
	                   </tr>
	                   <tr><th></th><td><br/></td></tr>
	                   <tr>
	                   	<th class="ty_top">
	                   	종료시간&nbsp; :  &nbsp;
	                   	</th>
	                   	<td class="form-group">
	                   		<input type="text" id="finish" name="date" value="" class="form-control ty_font ty_form">
								<script type="text/javascript">
									$(function(){
										$('*[name=date]').appendDtpicker();
									});
								</script>
	                   	</td>
	                   </tr>
	                   <tr><th></th><td><br/></td></tr>
	                   
	                   <tr>
	                   	<th class="ty_top">
	                   	방송링크&nbsp; :  &nbsp;
	                   	</th>
	                   	<td class="form-group">
	                   		<input type="text" id="gonglink" name="link" class="form-control" value=""/>
	                   	</td>
	                   </tr>
	                   <tr><th></th><td><br/></td></tr>
	  					<tr>
	                   	<th class="ty_top">
	                   	코멘트&nbsp; :  &nbsp;
	                   	</th>
	                   	<td class="form-group">
	                   		<textarea id="comments" name="comments" class="form-control" rows="3" style="width: 100%;"></textarea>
	                   	</td>
	                   </tr>
	                   <tr><th></th><td><br/></td></tr>
	         			 <%-- 첨부파일 타입 추가하기  --%>
			         	<tr>
		         		<th class="ty_top">
		         		파일첨부&nbsp; :  &nbsp;
		         		</th>
		         		<td class="form-group">
		  		        <!--     <input type='file' name='attach2' class='btn btn-default' /> -->
		  		        <input type="file" name="attach2" id="myFile" class="form-control ty_form" multiple size="50" onchange="addFile()">
	
							<p id="demo" style="font-size: 11pt;"></p>
							<div id="fileattach"></div>
		         		</td>
			         	</tr>
	         			</table>
	         			</form>
			            </div>               
					<div class="modal-footer" style="margin-top: 50px; margin-left: 10px;">
			          <button type="button" class="btn btn-danger" onClick="goOnair();" style="font-weight: bold; font-size: 12pt;">ON AIR</button>
			        </div> 
	             
	                  </div>
	              </div>
		
		
		     </div><!--container end-->
          </div>
        </div>
         
      </div>
	
	</div>
</div> 
   
<script type="text/javascript">
	$(document).on("click","#clock",function(e){
		var _target = $(e.target);
	
		$("#gonglink").val(_target.data("gonglink"));
		$("#liveno_fk").val(_target.data("gongliveno")); 
		
	});

</script>   
      
        
          <script src="<%=request.getContextPath() %>/resources/calendar/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/hoe-nav/hoe.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/pace/pace.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/js/app.js"></script>
      
        
        