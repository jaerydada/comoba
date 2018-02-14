<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style type="text/css">

#live-title{
	width: 100%;
	height: 60px;
	/* border-bottom: 1px solid gray; */
	border-top: none;
}

.star{
	width: 25px;
	height: 25px;
}

#give-star{
	width: 100%;
	height: 50px;
	/* border-bottom: 1px solid gray; */
}

#live-comment{
	font-size: 11pt;
}

#comment-write{
	width: 80%;
	float: left;
}

.liststyle{
	
}



</style>

	<div class="divide80"></div>

	<div class="container">
		
		<div id="live-title" class="post-detail">
			<div style="width: 80%; float:left">
				<img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 50px; height: 50px;">&nbsp;
				<span style="font-weight: bold; font-size: 13pt; color: #000;">열공이</span>
			</div>
			<div align="right" style="width: 20%; float: left; margin-top: 20px;">
				조회수 186
			</div>
		</div>
		<div class="divide30"></div>
		
		
		<div style="float:left; width: 100%;">
		<img src="<%= request.getContextPath() %>/resources/images/live/liveimg.png" alt="" width="700px" height="auto">
		</div>
		
		<div class="divide30" style="float: left;"></div>
		
		<div style="float:left; width: 70%;">
		<h3 style="padding-top: 30px;">고삼이들 리얼공부방송!</h3>
		<span>2017-06-14</span>
		
		<div class="divide30" style="float: left; width: 100%;"></div>
		
		<p style="font-size: 12pt; color: #000">
		매주 월, 수, 금 오전 10시부터 시작합니다.<br/><br/>

		전국에 있는 고삼이분들 같이 공부해요! <br/>
		집중이 잘 되게 하는 백색소음도 듣고, 공부하는 모습을 보고 자극도 받고.<br/>
		2018 수능 모두 대박납시다~~♥<br/>
		</p>
		<br/><br/>
		
		
		<div id="connect-link" style="margin-top: 30px;">
			<a href="https://www.youtube.com/" target="_blank"><span style="font-size: 12pt; color: #000; text-decoration: underline; background-color: #fefac7;">☞라이브 보러가기</span></a>
		</div>
		
		</div>
		
		<div class="sidebar-box margin40" style="float: right; width: 25%; padding-top: 5%;">
            <h4>About 열공이</h4>
            <ul class="list-unstyled cat-list">
                <li> <a href="#">라이브방송 횟수</a> <i class="fa fa-angle-right"></i></li>
                <li> <a href="#">절대공부시간</a> <i class="fa fa-angle-right"></i></li>
                <li> <a href="#">???</a> <i class="fa fa-angle-right"></i></li>
                <li> <a href="#">???</a> <i class="fa fa-angle-right"></i></li>
            </ul>
        </div>
		
		<div class="divide80" style="clear:both;"></div>
		
		<div id="give-star" class="blog-post" align="right" style="clear: both;">
			<img class="star" src="<%= request.getContextPath() %>/resources/images/live/star1.png">&nbsp;<span style="font-size: 11pt;">4.5
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별점주기</span>
			<select>
			<option value="5">★★★★★</option>
			<option value="4">☆★★★★</option>
			<option value="3">☆☆★★★</option>
			<option value="2">☆☆☆★★</option>
			<option value="1">☆☆☆☆★</option>
			</select>&nbsp;&nbsp;
			<button class="btn btn-default" style="height: 30px; ">확인</button>
		</div>
		
		
		
		<!-- 댓글 제이슨 -->	
		<div id="comment-box" style="width: 100%; height: auto;">
			<h4>댓글쓰기 38개</h4>
			<div id="comment-write" align="center">
				<textarea name="content" id="live-comment" style="width: 100%; height: 80px; float:left;" placeholder="주제와 무관한 댓글이나 악플은 경고조치없이 삭제되며 징계대상이 될 수 있습니다."></textarea>
				<button class="btn" style="margin-top: 10px; background-color: #3498db; float: right;" ><span style="color: white;">작성하기</span></button>
			</div>
			
			<div class="divide50" style="float: left;"></div>
			
			
			<table>
			<tr class="liststyle">
				<td>
				<div style="float: left; width: 60px; height: 60px; padding-top: 10px; padding-left: 10px;">
				<img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 40px; height: 40px;">
				</div>&nbsp;
				<div style="float: left; width: 90%;">
				<span style="font-weight: bold; font-size: 13pt; color: #000;">태봉이</span><br/>
				<span>이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.</span>&nbsp;&nbsp;<span style="color: #3498db; font-size: 9pt;">2017-06-14</span>
				</div><br/><br/>
				</td>
			</tr>
			<tr><td><br/></td></tr>
			
			<tr class="liststyle">
				<td>
				<div style="float: left; width: 60px; height: 60px; padding-top: 10px; padding-left: 10px;">
				<img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 40px; height: 40px;">
				</div>&nbsp;
				<div style="float: left; width: 90%;">
				<span style="font-weight: bold; font-size: 13pt; color: #000;">태봉이</span><br/>
				<span>이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.</span>&nbsp;&nbsp;<span style="color: #3498db; font-size: 9pt;">2017-06-14</span>
				</div><br/><br/>
				</td>
			</tr>
			<tr><td><br/></td></tr>
			
			<tr class="liststyle">
				<td>
				<div style="float: left; width: 60px; height: 60px; padding-top: 10px; padding-left: 10px;">
				<img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 40px; height: 40px;">
				</div>&nbsp;
				<div style="float: left; width: 90%;">
				<span style="font-weight: bold; font-size: 13pt; color: #000;">태봉이</span><br/>
				<span>이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.....</span>&nbsp;&nbsp;<span style="color: #3498db; font-size: 9pt;">2017-06-14</span>
				</div><br/><br/>
				</td>
			</tr>
			<tr><td><br/></td></tr>
			
			<tr class="liststyle">
				<td>
				<div style="float: left; width: 60px; height: 60px; padding-top: 10px; padding-left: 10px;">
				<img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 40px; height: 40px;">
				</div>&nbsp;
				<div style="float: left; width: 90%;">
				<span style="font-weight: bold; font-size: 13pt; color: #000;">태봉이</span><br/>
				<span>이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.</span>&nbsp;&nbsp;<span style="color: #3498db; font-size: 9pt;">2017-06-14</span>
				</div><br/><br/>
				</td>
			</tr>
			<tr><td><br/></td></tr>
			
				
			</table>
	
			
			이전페이지 [1] [2] [3] [4] [5] 다음페이지
		</div>
		
	</div>
	
	<div class="divide60"></div>
	
	
	
<%-- 	
<tr class="liststyle">
				<td>
				<div style="float: left; width: 60px; height: 60px; padding-top: 10px; padding-left: 10px;">
				<img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 40px; height: 40px;">
				</div>&nbsp;
				<div style="float: left; width: 90%;">
				<span style="font-weight: bold; font-size: 13pt; color: #000;">태봉이</span><br/>
				<span>이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.</span>&nbsp;&nbsp;<span style="color: #3498db; font-size: 9pt;">2017-06-14</span>
				</div><br/><br/>
				</td>
			</tr>


<div class="liststyle">
				<div style="float: left; width: 60px; height: 60px; padding-top: 10px; padding-left: 10px;">
				<img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 40px; height: 40px;">
				</div>&nbsp;
				<div style="float: left; width: 90%;">
				<span style="font-weight: bold; font-size: 13pt; color: #000;">태봉이</span><br/>
				<span>이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.</span>&nbsp;&nbsp;<span style="color: #3498db; font-size: 9pt;">2017-06-14</span>
				</div>
			</div>
			
			<div class="liststyle">
				<div style="float: left; width: 60px; height: 60px; padding-top: 10px; padding-left: 10px;">
				<img src="<%= request.getContextPath() %>/resources/images/user.png" alt="" style="width: 40px; height: 40px;">
				</div>&nbsp;
				<div style="float: left; width: 90%;">
				<span style="font-weight: bold; font-size: 13pt; color: #000;">태봉이</span><br/>
				<span>이 사람꺼 공부 진짜 잘됨. 딴짓할라가도 자극받아서 같이 공부하게됨.</span>&nbsp;&nbsp;<span style="color: #3498db; font-size: 9pt;">2017-06-14</span>
				</div>
			</div> --%>