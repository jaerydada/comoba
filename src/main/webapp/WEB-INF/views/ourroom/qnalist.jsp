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



<style  type="text/css">

{
  "kind": "youtube#liveChatMessage",
  "etag": etag,
  "id": string,
  "snippet": {
    "type": string,
    "liveChatId": string,
    "authorChannelId": string,
    "publishedAt": datetime,
    "hasDisplayContent": boolean,
    "displayMessage": string,
    "fanFundingEventDetails": {
      "amountMicros": unsigned long,
      "currency": string,
      "amountDisplayString": string,
      "userComment": string
    },
    "textMessageDetails": {
      "messageText": string
    },
    "messageDeletedDetails": {
      "deletedMessageId": string
    },
    "userBannedDetails": {
      "bannedUserDetails": {
        "channelId": string,
        "channelUrl": string,
        "displayName": string,
        "profileImageUrl": string
      },
      "banType": string,
      "banDurationSeconds": unsigned long
    },
    "superChatDetails": {
      "amountMicros": unsigned long,
      "currency": string,
      "amountDisplayString": string,
      "userComment": string,
      "tier": unsigned integer
    }
  },
  "authorDetails": {
    "channelId": string,
    "channelUrl": string,
    "displayName": string,
    "profileImageUrl": string,
    "isVerified": boolean,
    "isChatOwner": boolean,
    "isChatSponsor": boolean,
    "isChatModerator": boolean
  }
} 
</style>
    
 <!--side navigation start-->
        <div id="hoeapp-wrapper" class="hoe-hide-lpanel" hoe-device-type="desktop">
            <header id="hoe-header" hoe-lpanel-effect="shrink">
                <div class="hoe-left-header" style="background-color: gray;">
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
                     
                     </ul>
                </div>
            </header>

        <!--side navigation start-->
         <div id="hoeapp-container" hoe-color-type="lpanel-bg7" hoe-lpanel-effect="shrink">
                <aside id="hoe-left-panel" hoe-position-type="absolute">

                  <ul class="nav panel-list">
                     <li class="hoe-has-menu">
                            
                             <a href="<%=request.getContextPath()%>/ourroom/qnastory.action"> <i class="ion-search"></i>공스토리</a>
                                <span class="selected"></span>
                           
                        </li>
                        <li class="hoe-has-menu">
                          
                              <a href="<%=request.getContextPath()%>/ourroom/qnalive.action"> <i class="ion-search"></i>공라이브</a>
                                <span class="selected"></span>
                          
                        </li>
                        <li class="hoe-has-menu">
                            
                               <a href="<%=request.getContextPath()%>/ourroom/qnamyroom.action"> <i class="ion-search"></i>내방</a>
                                <span class="selected"></span>
                         
                        </li>
                         <li class="hoe-has-menu">
                           
                                <a href="<%=request.getContextPath()%>/ourroom/qnaourroom.action"> <i class="ion-search"></i>우리방</a>
                                <span class="selected"></span>
                          
                        </li>
                  <li class="hoe-has-menu">
                           
                                <a href="<%=request.getContextPath()%>/ourroom/qnalist.action"> <i class="ion-search"></i>자주묻는질문</br>&nbsp;&nbsp; 1:1질문</a>
                                <span class="selected"></span>
                          
                        </li>
                     </ul>
                </aside>





                <!--start main content-->
                <section id="main-content">
	
        <div class="divide80" ></div>
         
                <!-- 1:1문의창 -->
                <div class="row margin-b-30 scroll-to" style="width:100%">
                    <div class="col-sm-6 col-sm-offset-3 text-center wow animated fadeInUp" data-wow-delay="0.4s" style="width: 50%">
                        <h2 class="text-uppercase" style="color: gray;">1:1 상담 도움이 필요하신가요?</h2>
                        <p class="margin-b-20">
							 스터디룸 관련 상담은 
							1:1 상담으로 문의해 주세요.</br>
							 그 외 문의는 전화 및 이메일을 이용하여 주시기 바랍니다.
                            </p>
                        <a href="#rsvp" class="btn btn-dark-border btn-lg"   onClick="javascript:location.href='<%= request.getContextPath() %>/ourroom/oneone.action'">상담하기</a>
                    </div>
                </div>
            
           
            <h3 style="color: gray;"align="center">자주묻는 질문 </br></br></h3>
	

                    
         			   <!-- 자주 묻는 질문중에서 찾아주세요  > 이메일 문의하기를 이용해 주세요! > 고객센터 상담원에게 전화문의를 해주세요 ! -->
            <div class="row" >
                <div class="col-md-7" style="margin-left: 100px;">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default" style=" height: 200%;">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                  <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="color: gray;">
                                     [서비스 사용]  	자주묻는 질문 게시판입니다.
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                                                                             이곳에서 자주묻는 질문에 대한 답변을 확인하실 수 있습니다. :)
                                 </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"  style="color: gray;">
                                 [서비스 사용]        스터디룸은 무엇입니까?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body">
			 							답변 :	학생들과의 유쾌한 교류에만 집중하세요~ 스터디원 모집 및 장소     , 스터디룸예약 유용한 팁 및 자료를 지원해 드립니다.
                             
                                     </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"  style="color: gray;">
                                  	[서비스 사용]		 스터디룸 사이트에 어떠한 지원이 있나요?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="panel-body">
								답변 : 
									함께 동영상으로 공부하는 공라이브, 
									공부스토리를 서로 공유할수있는 공스토리,
									내 공부 스케줄관리와 공부현황 스터디룸 찾기 등 다양한
									기능이 있습니다 ~
                                  </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4"  style="color: gray;">
                            [서비스 사용]       공라이브 이용방법은 무엇입니까?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse4" class="panel-collapse collapse" >
                                <div class="panel-body">
						                               답변 : 공라이브는 각각의 분야별 스터디를 선택하여 동영상을  시청할 수 있습니다.
						                               요일과 시간을 확인하시고 이용하여 주세요.
                               
                                  </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5"  style="color: gray;">
                                  [서비스 사용]    공스토리 이용방법은 무엇입니까?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse5" class="panel-collapse collapse">
                                <div class="panel-body">
							                           답변 : 공부스토리를 쓸수있고 글에 팔로워 팔로잉을 할수있습니다.
							                              마음에 드는 게시글을 좋아요 눌러주세요. 
							                              나만보기 비밀노트 내게시물등으로 볼수 있어요~
                                 </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse6"  style="color: gray;">
                            [스터디 진행]           스터디에는 어떤 사람들이 참가하나요?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse6" class="panel-collapse collapse">
                                <div class="panel-body">
						                                답변 : 스터디서치에서 운영하는 모든 스터디는 일반인 회원 학생 회원들을 대상으로 진행합니다.
											스터디에 참여하시는 분들은 학생부터 직장인등 다양해요 .
											
                             </div>
                            </div>
                        </div>
                           <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse7"  style="color: gray; table-layout: auto;" >
                                    [서비스 사용]   관리자에게 문의는 어떻게 하나요? 
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse7" class="panel-collapse collapse">
                                <div class="panel-body">
                    			       답변    : Q&A에서 1:1 상담신청 하기로 보내주시기 바랍니다 :)
                            </div>
                            </div>
                        </div>
                          
                    </div>
                </div>
               </div>

               
         </section>    
         

            </div>
        </div>
        
            
      
        <div class="divide60"></div>


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