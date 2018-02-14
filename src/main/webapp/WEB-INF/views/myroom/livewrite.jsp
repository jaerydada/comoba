<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Assan admin</title>

      
   <!-- Bootstrap -->
        <link href="<%=request.getContextPath() %>/resources/calendar/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--side menu plugin-->
        <link href="<%=request.getContextPath() %>/resources/calendar/plugins/hoe-nav/hoe.css" rel="stylesheet">
        <!-- icons-->
        <link href="<%=request.getContextPath() %>/resources/calendar/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/resources/calendar/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!--dropzone-->
        <link href="<%=request.getContextPath() %>/resources/calendar/plugins/dropzone/basic.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/resources/calendar/plugins/dropzone/dropzone.css" rel="stylesheet">
        <!--template custom css file-->
        <link href="<%=request.getContextPath() %>/resources/calendar/css/style.css" rel="stylesheet">

        <script src="<%=request.getContextPath() %>/resources/calendar/js/modernizr.js"></script>
        
        
    </head>
    <body style="height: 100%;">


<!--end main content-->
            
        <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout">

                   <!--start main content-->
            
                    <div class="space-30"></div>
                    <div class="container" style="width: 95%; height: auto;">

                     
                                <div class="panel">
                                    <div class="panel-body" >
                                        <div class="row mail-header">
                                            <div class="col-md-6">
                                                <h3>방송하기</h3>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="pull-right tooltip-show">
                                                    <a href="mailbox.html" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top" title="" data-original-title="Move to draft folder"><i class="fa fa-pencil"></i> Draft</a>
                                                    <a href="mailbox.html" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="" data-original-title="Discard email"><i class="fa fa-times"></i> Discard</a>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="space-20"></div>
                                        <form class="form-horizontal" method="get">
                                   <div id="sm_top" style="margin-left: 30px; margin-bottom:15px; line-height: 37px; ">
                                        
                                     &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;      <select name="colname" id="colname" style="height: 30px; width: auto;">
											<option value="normal">자습방</option>
											<option value="study">교육방</option>
											<option value="dday">질문방</option>
										</select>
                                       <br>
                                        방송시간 설정&nbsp; :  &nbsp;   
                                        <select name="sdatey" id="sdatey" style="height: 30px; width: auto;">
											<option value="2017">클릭해서 날짜</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
										</select>

                                        <select name="sdatey" id="sdatey" style="height: 30px; width: auto;">
											<option value="2017">시간은 스피너로 합시다....</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
										</select>
										
										&nbsp;&nbsp;~&nbsp;&nbsp;
                                            
                                        <select name="sdatey" id="sdatey" style="height: 30px; width: auto;">
											<option value="2017">클릭해서 날짜</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
										</select>

                                        <select name="sdatey" id="sdatey" style="height: 30px; width: auto;">
											<option value="2017">시간은 스피너로 합시다....</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
										</select>
										<br>
										   </div>      
										   

                                            <div class="form-group" style="vertical-align: middle;" align="center">
                                            <label class="col-sm-2 control-label"style="height: 30px; width: 100px; ">제목</label>
                                     
                                     		<div class="col-sm-10"><input type="text" class="form-control" style="height: 30px; " ></div>
                                            </div>
                                                                               
                                            <div class="form-group"><label class="col-sm-2 control-label" style="height: 30px; width: 100px;">내용작성</label>
                                     		<div class="col-sm-10"><textarea class="form-control"  style="min-height: 200px;"></textarea></div>
                                            </div>
  
											<div class="form-group" style="vertical-align: middle;" align="center">
                                            <label class="col-sm-2 control-label"style="height: 30px; width: 100px; ">링크입력</label>
                                     
                                     		<div class="col-sm-10"><input type="text" class="form-control" style="height: 30px; " ></div>
                                            </div>
                                            
                                        </form>
                                        
               
                    <div class="container" style="width: 100%; height: auto;">

                    
                            <div class="col-sm-12" style="width: 90%; height: 50%;">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <div class="panel-actions">
                                            <a href="#" class="panel-action panel-action-toggle" data-panel-toggle=""></a>
                                            <a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                        </div>
                                        <h2 class="panel-title">파일 업로드 <span class="helping-text">Drag & drop file upload</span></h2>

                                    </header>
                              
                                    <div class="panel-body">
                                        <form id="my-awesome-dropzone sm_update" action="#" class="dropzone" >
                                            <button type="submit" class="btn btn-primary rounded pull-right sm_update">Submit!</button>
                                        </form>
                                    </div>
                                  
                                </div>
                            </div>


                    </div>


            
                    
                                        <div class="space-20"></div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                               <!--  <div class="summernote-theme-1">
                                                    <div class="summernote">
                                                        <h4>Hi Mate!</h4>
                                                        <p>Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla</p>
                                                        <p>Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla</p>
                                                    </div>
                                                </div> -->
                                                <div class="text-right">
                                                    <button type="submit" class="btn btn-primary btn-lg rounded">작성</button>
                                                    <button type="reset" class="btn btn-danger  btn-lg rounded">취소</button>
                                                   
                                                </div><!--.chat-area-bottom-->
                                            </div>
                                    </div><!--row end-->
                                </div>
                            </div>

   
            </div><!--container end-->

       


          <!--Common plugins-->
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/jquery/dist/jquery.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/hoe-nav/hoe.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/pace/pace.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/js/app.js"></script>
        <!-- DROPZONE -->
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/dropzone/dropzone.js"></script>
        
        <script>
            $(document).ready(function () {
                Dropzone.options.myAwesomeDropzone = {
                    autoProcessQueue: false,
                    uploadMultiple: true,
                    parallelUploads: 100,
                    maxFiles: 100
                };
            });
        </script>
	
          
    </body>
</html>