<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>assan - Professional theme</title>

         <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">              
        <!-- font awesome for icons -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- flex slider css -->
        <link href="css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="screen">
        <!--owl carousel css-->
        <link href="owl-carousel/assets/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="owl-carousel/assets/owl.theme.default.css" rel="stylesheet" type="text/css" media="screen">
        <!--mega menu -->
        <link href="css/yamm.css" rel="stylesheet" type="text/css">
        <!--popups css-->
        <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
        <!-- custom css (blue color by default) -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>

									
             
        <div class="breadcrumb-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>스터디룸 찾기</h4>
                    </div>
                    <div class="col-sm-6 hidden-xs text-right">
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li>studyroom</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div><!--breadcrumbs-->
        <div class="divide80"></div>
        
           <div class="sidebar-box margin40" align="center">
                        <h4>Search</h4>
                        <form role="form" class="search-widget">
                            <input type="text" class="form-control" style="max-width:740px;">
                            <i class="fa fa-search" style="max-width:740px;"></i>
                        </form>
                    </div>
     
         <div>
         
         
         <div id="ssong" style="height: 400px; width: 100%;">
         	<div class="ff"  style="width: 40%; float: left;"  >
               <img src="<%= request.getContextPath() %>/resources/img/sm/map.PNG" class="ff" alt="workimg"  width="60%" style="margin-left: 20%;">
           
         
      </div>
         
         
            <div class="row" style="width: 60%; float: left;">
                <div class="col-md-8">
                    <div class="blog-post">

                        <div class="row" style="border: solid gray 0px; background-color: #e6e6e6">
                            <div class="col-md-6 margin20">
                                <a href="#">
                                
                                       <div class="item-img-wrap">
                                        <img src="<%= request.getContextPath() %>/resources/img/sm/studyroom2.jpg" class="img-responsive" alt="workimg" width="60%" style="margin-left: 20%;">
                                        <div class="item-img-overlay">
                                   
                                            <span></span>
                                        </div>
                                    </div>                       
                                </a><!--work link--> 
                            </div>
                            <div class="col-md-6 margin20">
                                <ul class="list-inline post-detail">
                                    <li>by <a href="#">comoba</a></li>
                                    <li><i class="fa fa-calendar"></i>2017-6-20</li>
                                    <li><i class="fa fa-tag"></i> <a href="#">"</a></li>
                                </ul>
                                <h2><a href="/main/story/studyroom.action">강남 지하 스터디룸</a></h2>
                                <p>
                                                     이름 강남 지하 스터디룸        </br>           
                                                     지역   서울시 강남구 강남역 이상한빌딩   </br>       
                                                     비용 1200원 ( 1시간 1인)    </br>   
                                    H.P 070 - 7777 - 2222</br>
                                      </p>
                                <p><a href="blog-single.html" class="btn btn-theme-dark">상세페이지 보기</a></p>
                            </div>
                        </div>
                    </div><!--blog post-->
                    
                    
                    
                    
        </div>
        
        
        
        
        
        
                    
                    
                    
                    
                    
                       
                     
                
                </div><!--col-->
              
            </div><!--row for blog post-->
        </div><!--blog full main container-->
      
      
      
      
      
      
       <!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="js/jquery.min.js"></script>        
        <!--bootstrap js plugin-->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>       
        <!--easing plugin for smooth scroll-->
        <script src="js/jquery.easing.1.3.min.js" type="text/javascript"></script>
        <!--sticky header-->
        <script type="text/javascript" src="js/jquery.sticky.js"></script>
        <!--flex slider plugin-->
        <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
        <!--parallax background plugin-->
        <script src="js/jquery.stellar.min.js" type="text/javascript"></script>
        
        
        <!--digit countdown plugin-->
        <script src="js/waypoints.min.js"></script>
        <!--digit countdown plugin-->
        <script src="js/jquery.counterup.min.js" type="text/javascript"></script>
        <!--on scroll animation-->
        <script src="js/wow.min.js" type="text/javascript"></script> 
        <!--owl carousel slider-->
        <script src="owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
        <!--popup js-->
        <script src="js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        
        
        
        
        <!--customizable plugin edit according to your needs-->
        <script src="js/custom.js" type="text/javascript"></script>
    </body>
</html>
