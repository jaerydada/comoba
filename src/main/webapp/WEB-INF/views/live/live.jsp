<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

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

  <div class="breadcrumb-wrap">
      <div class="container">
          <div class="row">
             <div class="col-sm-6">
                 <h4>공라이브</h4>
             </div>
             <div class="col-sm-6 hidden-xs text-right">
                 <ol class="breadcrumb">
                     <li><a href="index.html">Home</a></li>
                     <li>blog masonry</li>
                 </ol>
             </div>
          </div>
      </div>
   </div><!--breadcrumbs-->
   
    <div class="divide80"></div>
    
    <div class="blog-masonary-wrapper">
        <div class="container mas-boxes">
            <div class="mas-boxes-inner ty_box">
                	<img src="<%= request.getContextPath() %>/resources/img/maxresdefault.jpg" alt="" class="img-responsive">
                <div class="clock-position">
                	<img class="clock" src="<%= request.getContextPath() %>/resources/images/live/clock.png" alt="">
                </div>
                <div class="mas-blog-inner">
                    <h3><a href="<%= request.getContextPath() %>/live/livedetail.action">고삼이들 리얼공부방송!</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">열공이</a></li>
                        <li><i class="fa fa-calendar"></i> 2017-06-14</li>                            
                    </ul>
                    <p>
                             매주 월, 수, 금 오전 10시부터 시작합니다. 전국에 있는 고삼이분들 같이...
                    </p>
                    <div align="right"><img class="star" src="<%= request.getContextPath() %>/resources/images/live/star1.png">&nbsp;4.5</div>
                </div><!--blog inner-->
            </div>
               <div class="mas-boxes-inner ty_box">
                <img src="<%= request.getContextPath() %>/resources/img/english.jpg" alt="" class="img-responsive">
                <div class="clock-position">
                	<img class="clock" src="<%= request.getContextPath() %>/resources/images/live/clock.png" alt="">
                </div>
                  <div class="mas-blog-inner">
                    <h3><a href="<%= request.getContextPath() %>/live/livedetail.action">STUDY WITH ME :)</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">열공이2</a></li>
                        <li><i class="fa fa-calendar"></i> 2017-06-14</li>                            
                    </ul>
                    <p>
                            영어공부 같이해요 :)<br/>
                      Study with me 13번째 라이브
                    </p>
                    <div align="right"><img class="star" src="<%= request.getContextPath() %>/resources/images/live/star1.png">&nbsp;4.3</div>
                </div><!--blog inner-->
            </div>
               <div class="mas-boxes-inner ty_box">
                <img src="<%= request.getContextPath() %>/resources/img/maxresdefault2.jpg" alt="" class="img-responsive">
                <div class="clock-position">
                	<img class="clock" src="<%= request.getContextPath() %>/resources/images/live/clock.png" alt="">
                </div>
                  <div class="mas-blog-inner">
                    <h3><a href="<%= request.getContextPath() %>/live/livedetail.action">25분 뽀모도로 공부</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">Gilian</a></li>
                        <li><i class="fa fa-calendar"></i> 2017-06-14</li>                            
                    </ul>
                    <p>
                        같이 공부해요. 25분 뽀모도로 공부
                    </p>
                    <div align="right"><img class="star" src="<%= request.getContextPath() %>/resources/images/live/star1.png">&nbsp;4.5</div>
                </div><!--blog inner-->
            </div>
             <div class="mas-boxes-inner ty_box">
                <iframe height="170" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/62974792&amp;color=ff6600&amp;auto_play=false&amp;show_artwork=true"></iframe>
                  <div class="mas-blog-inner">
                    <h3><a href="#">Assan! All in One</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">assan</a></li>
                        <li><i class="fa fa-calendar"></i> 31st july 2014</li>                            
                    </ul>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.lley of type and scrambled it to make a type specimen book.
                    </p>
                    <a href="#">Continue reading</a>
                </div><!--blog inner-->
            </div>
              <div class="mas-boxes-inner ty_box">
                <img src="<%= request.getContextPath() %>/resources/img/showcase-4.jpg" alt="" class="img-responsive">
                  <div class="mas-blog-inner">
                    <h3><a href="#">Premium Plugins</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">assan</a></li>
                        <li><i class="fa fa-calendar"></i> 31st july 2014</li>                            
                    </ul>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.lley of type and scrambled it to make a type specimen book.
                    </p>
                    <a href="#">Continue reading</a>
                </div><!--blog inner-->
            </div>
             <div class="mas-boxes-inner ty_box">
                <img src="<%= request.getContextPath() %>/resources/img/showcase-3.jpg" alt="" class="img-responsive">
                  <div class="mas-blog-inner">
                    <h3><a href="#">170+ VALID layouts</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">assan</a></li>
                        <li><i class="fa fa-calendar"></i> 31st july 2014</li>                            
                    </ul>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.lley of type and scrambled it to make a type specimen book.
                    </p>
                    <a href="#">Continue reading</a>
                </div><!--blog inner-->
            </div>
              <div class="mas-boxes-inner ty_box">
                <img src="<%= request.getContextPath() %>/resources/img/img-6.jpg" alt="" class="img-responsive">
                  <div class="mas-blog-inner">
                    <h3><a href="#">Simple image post</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">assan</a></li>
                        <li><i class="fa fa-calendar"></i> 31st july 2014</li>                            
                    </ul>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.lley of type and scrambled it to make a type specimen book.
                    </p>
                    <a href="#">Continue reading</a>
                </div><!--blog inner-->
            </div>
              <div class="mas-boxes-inner ty_box">
                <img src="<%= request.getContextPath() %>/resources/img/img-7.jpg" alt="" class="img-responsive">
                  <div class="mas-blog-inner">
                    <h3><a href="#">Wow! i loved Assan</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">assan</a></li>
                        <li><i class="fa fa-calendar"></i> 31st july 2014</li>                            
                    </ul>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.lley of type and scrambled it to make a type specimen book.
                    </p>
                    <a href="#">Continue reading</a>
                </div><!--blog inner-->
            </div>
              <div class="mas-boxes-inner ty_box">
                  <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="http://player.vimeo.com/video/57175742"></iframe>
                    </div>
                  <div class="mas-blog-inner">
                    <h3><a href="#">is it responsive?</a></h3>
                    <ul class="list-inline post-detail">
                        <li>by <a href="#">assan</a></li>
                        <li><i class="fa fa-calendar"></i> 31st july 2014</li>                            
                    </ul>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.lley of type and scrambled it to make a type specimen book.
                    </p>
                    <a href="#">Continue reading</a>
                </div><!--blog inner-->
            </div>
         
        </div>
        <div class="container">
               
            <ul class="pager">
            <li class="previous"><a href="#">← Previous Page</a></li>
            <li class="next"><a href="#">Next Page →</a></li>
        </ul>
        </div>
    </div><!--masonary wrapper-->
    <div class="divide60"></div>

        <!--masonary js-->
        <script src="<%= request.getContextPath() %>/resources/js/jquery.masonry.min.js" type="text/javascript"></script>
        
               
        <!--customizable plugin edit according to your needs-->
        <script src="<%= request.getContextPath() %>/resources/js/custom.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath() %>/resources/js/masonary-custom.js" type="text/javascript"></script>
        
        