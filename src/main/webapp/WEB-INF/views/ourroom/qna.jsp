<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Assan admin</title>

        <!-- Bootstrap -->
        <link href="<%=request.getContextPath() %>/resources/song/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--side menu plugin-->
        <link href="<%=request.getContextPath() %>/resources/song/plugins/hoe-nav/hoe.css" rel="stylesheet">
        <!-- icons-->
        <link href="<%=request.getContextPath() %>/resources/song/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/resources/song/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/resources/song/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
        <link href="<%=request.getContextPath() %>/resources/song/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
        <!--template custom css file-->
        <link href="<%=request.getContextPath() %>/resources/song/css/style.css" rel="stylesheet">

        <script src="<%=request.getContextPath() %>/resources/song/js/modernizr.js"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout">




    


        <!--side navigation start-->
        <div id="hoeapp-wrapper" class="hoe-hide-lpanel" hoe-device-type="desktop">
            <header id="hoe-header" hoe-lpanel-effect="shrink">
                <div class="hoe-left-header">
                    <a href="#"><span>검색</span></a>
                    <span class="hoe-sidebar-toggle"><a href="#"></a></span>
                </div>

                <div class="hoe-right-header" hoe-position-type="relative">
                    <span class="hoe-sidebar-toggle"><a href="#"></a></span>
                    <ul class="left-navbar">
                        <li>
                            <div class="top-search hidden-xs">
                                <form>
                                    <input type="text" class="form-control" placeholder="Search here">
                                    <i class="ion-search"></i>
                                </form>
                            </div>
                        </li>

                    </ul>
                    <ul class="right-navbar navbar-right">
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"> <i class="ion-ios-bell-outline"></i> <span class="label label-danger">4</span></a>
                            <ul class="dropdown-menu dropdown-menu-scale lg-dropdown notifications">
                                <li> <p>You have 3 new notifications <a href="#"> Mark all Read</a></p></li>
                                <li class="unread-notifications">
                                    <a href="#">
                                        <i class="ion-ios-email-outline pull-right"></i>
                                        <span class="line">You have 8 Messages</span>
                                        <span class="small-line">3 Minutes ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="ion-social-twitter-outline pull-right"></i>
                                        <span class="line">You have 3 new followers</span>
                                        <span class="small-line">8 Minutes ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="ion-ios-download-outline pull-right"></i>
                                        <span class="line">Download Complete</span>
                                        <span class="small-line">6 Minutes ago</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="<%=request.getContextPath() %>/resources/song/images/us.png" alt=""> English</a>
                            <ul class="dropdown-menu dropdown-menu-scale lang-dropdown">
                                <li><a href="#"><img src="<%=request.getContextPath() %>/resources/song/images/us.png" alt=""> English </a></li>
                                <li><a href="#"><img src="<%=request.getContextPath() %>/resources/song/images/es.png" alt=""> Spanish </a></li>
                                <li><a href="#"><img src="<%=request.getContextPath() %>/resources/song/images/tr.png" alt=""> Turkish </a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="<%=request.getContextPath() %>/resources/song/images/avtar.png" alt="" width="30" class="img-circle"> Emily Doe</a>
                            <ul class="dropdown-menu dropdown-menu-scale user-dropdown">
                                <li><a href="#"><i class="ion-email-unread"></i> Inbox <span class="label label-warning">3</span></a></li>
                                <li><a href="#"><i class="ion-person"></i> Profile </a></li>
                                <li><a href="#"><i class="ion-settings"></i> Settings <span class="label label-primary">3/9</span></a></li>
                                <li><a href="#"><i class="ion-calendar"></i> Calendar </a></li>
                                <li><a href="#"><i class="ion-ios-compose"></i> Tasks </a></li>
                                <li><a href="#"><i class="ion-log-out"></i> Logout </a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </header>
            <div id="hoeapp-container" hoe-color-type="lpanel-bg7" hoe-lpanel-effect="shrink">
                <aside id="hoe-left-panel" hoe-position-type="absolute">

                    <ul class="nav panel-list">
                   <li class="active">
                            <a href="index.html">
                               <i class="ion-search"></i>
                                <span class="menu-text">공스토리</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                          <i class="ion-search"></i>
                                <span class="menu-text">공라이브</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                 <i class="ion-search"></i>
                                <span class="menu-text">내방</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                  <i class="ion-search"></i>
                                <span class="menu-text">우리방</span>
                                <span class="selected"></span>
                            </a>
                        <li>
                            <a href="calendar.html">
                               <i class="ion-search"></i>
                                <span class="menu-text">결제</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                                    </ul>
                            
                </aside><!--aside left menu end-->





                <!--start main content-->
                <section id="main-content">
	








 
        
        <div class="divide80"></div>
        <div class="container">
       
         
            <div class="col-md-6" align="center">
                    <img src="<%= request.getContextPath() %>/resources/img/sm/qna.PNG" class="img-qna" alt="1" style="width: 80%; height: auto; ">
                </div>

      
          
            </div>
            <div class="divide30"></div>
            <div class="row">
                <div class="col-md-7" style="margin-left: 100px;">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                       		사이트 디자인 너무 이뻐요 어디서 하셨어요???
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                              안알랴쥼
                                 </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                          스터디룸 결제는 비트코인으로 안되는건가요?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body">
                                    안알랴쥼
                                     </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                      스터디 그룹을 묶어주는 기능을 만들어 주실 순 없을까요?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="panel-body">
                                 안알랴쥼
                                  </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                                      Q&A문의사항?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse4" class="panel-collapse collapse">
                                <div class="panel-body">
                               답변
                                  </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
                                       Q&A문의사항?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse5" class="panel-collapse collapse">
                                <div class="panel-body">
                              답변
                                 </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">
                                        Q&A문의사항?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse6" class="panel-collapse collapse">
                                <div class="panel-body">
                                답변
                          div 이따가 플롯센터!               </div>
                            </div>
                        </div>
                           <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">
                                        Q&A문의사항?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse7" class="panel-collapse collapse">
                                <div class="panel-body">
                           답변      </div>
                            </div>
                        </div>
                           <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">
                                 Q&A문의사항?     </a>
                                </h4>
                            </div>
                            <div id="collapse8" class="panel-collapse collapse">
                                <div class="panel-body">
                          답변  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               </div>
               
                 <div class="col-md"   style="border: solid 0px gray;  width: 10%; height: 80%; position: relative;">
                    <img src="<%= request.getContextPath() %>/resources/img/sm/qna2.PNG" class="img-qna" style="position: relative; left: 1300px; top: -400px;">
                </div> 
                
                
               <!-- 1:1문의창 -->
                <div class="col-md-4 col-md-offset-1" style="border: solid 3px gray; width: 15%; height: 90%; position: relative;  left: 1100px; top: -290px; ">
              <!--   margin-left: 100px; position: relative; -->
                    <div class="sidebar-box margin4q0">
                        <h4>1:1 상담</h4>
                        <div style="margin-top: 20px;">
			<button type="button" onClick="javascript:location.href='<%= request.getContextPath() %>/qna.action'" >상담하기</button>&nbsp;
					</div>   
                    </div>
                    <!--sidebar-box-->
                    <div class="sidebar-box margin40">
		 			    <p> 스터디룸 관련 상담은 1:1 상담으로 문의해 주세요.</br>
		 			     그 외 문의는 전화 및 이메일을 </br>
		 			     이용하여 주시기 바랍니다. </p>
                    </div>
               <!--sidebar-box-->           
                </div>
            
      
        <div class="divide60"></div>












                </section><!--end main content-->
            </div>
        </div><!--end wrapper-->



        <!--Common plugins-->
        <script src="<%=request.getContextPath() %>/resources/song/plugins/jquery/dist/jquery.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/hoe-nav/hoe.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/pace/pace.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/js/app.js"></script>
        <!--page scripts-->
        <!-- Flot chart js -->
        <script src="<%=request.getContextPath() %>/resources/song/plugins/flot/jquery.flot.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/flot/jquery.flot.resize.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/flot/jquery.flot.pie.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/flot/jquery.flot.time.js"></script>
        <!--vector map-->
        <script src="<%=request.getContextPath() %>/resources/song/plugins/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/song/plugins/vectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- ChartJS-->
        <script src="<%=request.getContextPath() %>/resources/song/plugins/chartJs/Chart.min.js"></script>
        <!--dashboard custom script-->
        <script src="<%=request.getContextPath() %>/resources/song/js/dashboard.js"></script>
    </body>
</html>