<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <!--masonary js-->
    <script src="<%= request.getContextPath() %>/resources/js/jquery.masonry.min.js" type="text/javascript"></script>
    
           
    <!--customizable plugin edit according to your needs-->
    <script src="<%= request.getContextPath() %>/resources/js/custom.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/resources/js/masonary-custom.js" type="text/javascript"></script>
   
   <script type="text/javascript">

	$(document).ready(function() {
		loopshowNowTime();
	
	}); // end of ready(); ---------------------------------

	function showNowTime() {
		
		var now = new Date();
	
		var strNow = now.getFullYear() + "-" + (now.getMonth() + 1) + "-" + now.getDate();
		
		var hour = "";
		if(now.getHours() > 12) {
			hour = " 오후 " + (now.getHours() - 12);
		} else if(now.getHours() < 12) {
			hour = " 오전 " + now.getHours();
		} else {
			hour = " 정오 " + now.getHours();
		}
		
		var minute = "";
		if(now.getMinutes() < 10) {
			minute = "0"+now.getMinutes();
		} else {
			minute = ""+now.getMinutes();
		}
		
		var second = "";
		if(now.getSeconds() < 10) {
			second = "0"+now.getSeconds();
		} else {
			second = ""+now.getSeconds();
		}
		
		strNow += hour + ":" + minute + ":" + second;
		
		$(".clock").html("<span style='color:green; font-weight:bold;'>"+strNow+"</span>");
	
	}// end of function showNowTime() -----------------------------


	function loopshowNowTime() {
		showNowTime();
		
		var timejugi = 1000;   // 시간을 1초 마다 자동 갱신하려고.
		
		setTimeout(function() {
						loopshowNowTime();	
					}, timejugi);
		
	}// end of loopshowNowTime() --------------------------
	
</script>
      
    <div class="divide60"></div>
   		
	<div class="" align="center">
		<h1>
			오늘의 게시글 <span style="color: red;">136</span>개
		</h1>
	</div>
   
   <div class="divide20"></div>
    
    <div class="blog-masonary-wrapper">
        <div class="container mas-boxes">
            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture1.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡회계원리♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">회계사</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>

            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture2.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ 공부가 쉽지♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">똑똑이</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>

            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture3.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ English time♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">Jason</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>
            
            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture4.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ 일본어 첫걸음♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">유키</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>
                        
            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture5.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ 시간관리법♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">타이머</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>          
            
            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture6.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ 노트정리하기♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">정돈이</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>                          
         
        </div>
    </div><!--masonary wrapper-->
    
	<div align="center">
		<a href="#"><span class="label-primary label-circle"></span></a>
		<a href="#"><span class="label-primary label-circle"></span></a>
		<a href="#"><span class="label-primary label-circle"></span></a>
	</div>
    
    <div class="divide80"></div>
    <div class="divide60"></div>

	<div class="" align="center">
		<h1>
			오늘의 <span style="color: skyblue;">자극 </span>글
		</h1>
		<h3>
			<span style="color: skyblue; font-size: x-large;">"</span>오늘도 힘내자구요<span style="color: skyblue; font-size: x-large;">"</span>
		</h3>
	</div>
	
  <div class="blog-masonary-wrapper">
        <div class="container mas-boxes">
            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture1.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡회계원리♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">회계사</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>

            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture2.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ 공부가 쉽지♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">똑똑이</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>

            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture3.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ English time♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">Jason</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>
            
            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture4.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ 일본어 첫걸음♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">유키</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>
                        
            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture5.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ 시간관리법♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">타이머</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>          
            
            <div class="mas-boxes-inner ty_box">
                	<a href="/main/writedetail.action"><img src="<%= request.getContextPath() %>/resources/images/intro/picture6.PNG" alt="" class="img-responsive"></a>
                <div class="mas-blog-inner">
                    <h3>♡ 노트정리하기♡</h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">정돈이</a></li>
                        <li><i class="fa fa-calendar"></i><div class="clock" style="display:inline;"></div></li>                            
                    </ul>
                </div><!--blog inner-->
            </div>                          
         
        </div>
    </div><!--masonary wrapper-->
    
	<div align="center">
		<a href="#"><span class="label-primary label-circle"></span></a>
		<a href="#"><span class="label-primary label-circle"></span></a>
		<a href="#"><span class="label-primary label-circle"></span></a>
	</div>
	
	<div class="divide80"></div>
    
        