<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
	
	.sm_margin{
		margin-left: 20px;
	}
	
	.sm_update{
		

		background-size: 30%;
		background-position: center;

	}
	#sm_update{
		

		background-size: 30%;
		background-position: center;

	}
	.sm_body{
	min-height:auto;
			background-size:cover;
			background-position:center;
			background-image:url('<%= request.getContextPath() %>/resources/img/sm/index.jpeg');
			color:#fff
	}
</style>

<title>Insert title here</title>

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
<body>

<div class="divide80"></div>

 <div class="blog-masonary-wrapper" >
             <div class="container mas-boxes" style="width: 880px; height: 480px;">
                <div class="mas-boxes-inner" style="width: 49.5%; height: 480px; float: left;" >
                
               
                    <div class="space-30" style="width: 100%;"></div>
                    <div class="container" style="width: 100%; height: auto;">

                    
                            <div class="col-sm-12" style="width: 90%">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <div class="panel-actions">
                                            <a href="#" class="panel-action panel-action-toggle" data-panel-toggle=""></a>
                                            <a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                        </div>
                                        <h2 class="panel-title">Dropzone <span class="helping-text">Drag & drop file upload</span></h2>

                                    </header>
                              
                                    <div class="panel-body">
                                        <form id="my-awesome-dropzone sm_update" action="#" class="dropzone" >
                                            <button type="submit" class="btn btn-primary rounded pull-right sm_update">Submit!</button>
                                        </form>
                                    </div>
                                  
                                </div>
                            </div>


                    </div>


            
             
                </div>
                
                 <div style="border: solid 1px gray; height: 480px; width:1px; float: left;"></div>
                
                     
          
                <div class="mas-boxes-inner" style="width: 49.5%; height: 480px; float: left; "  >
                
                                                
                                               
                        <div class="form-group sm_margin" ><br>
                        <label class="col-sm-2 control-label" style="height: 30px; width: 100px;">내용작성</label>
                        <div class="col-sm-10">
                        <textarea class="form-control"  style="min-height: 200px;"></textarea>
                        </div>
                        </div>
                		
                		<div class="form-group sm_margin" style="vertical-align: middle;" align="center"><br>
                        <label class="col-sm-2 control-label"style="height: 30px; width: 100px; ">해쉬태그</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" style="height: 30px; " ><br>
                        
                        </div>
                        </div>
                          
                        <div class="form-group sm_margin">
                        <label class="col-sm-2 control-label" style="height: 30px; width: 90%;">
                         <span style="font-size: 9pt; color: #3498db;">#카페#카공충#코딩#생활의코딩</span></label>
                       
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
                                                    <button type="submit" class="btn btn-primary btn-lg rounded">작성</button>&nbsp;
                                                    <button type="reset" class="btn btn-danger  btn-lg rounded">취소</button>
													&nbsp;&nbsp;&nbsp;&nbsp;                                                   
                                                </div><!--.chat-area-bottom-->
                                            </div>
                                    </div><!--row end-->               
                                     
           
               </div>
		</div>
	</div>
	<br><br><br><br>
	
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