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
        <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--side menu plugin-->
       <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/hoe-nav/hoe.css" rel="stylesheet">
        <!-- icons-->
        <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/summernote/summernote.css" rel="stylesheet">
        <!--template custom css file-->
        <link href="<%=request.getContextPath()%>/resources/jaeyeon/css/style.css" rel="stylesheet">

		
		
        <script src="<%=request.getContextPath()%>/resources/jaeyeon/js/modernizr.js"></script>
       
         <!--제이쿼리-->
        <script src="http://code.jquery.com/jquery-latest.js"></script>

 		 <!--드롭존-->
		 <%--  <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/dropzone/basic.css" rel="stylesheet"> --%>
    	 <%--  <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/dropzone/dropzone.css" rel="stylesheet"> --%>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        
        <style type="text/css">
        
            #map {
        width: 100%;
   height: 400px;
   background-color: grey;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
        
        </style>
        
    </head>
    
    
    <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout"  >
 
 
 <input type="checkbox" class="i-checks" style="position: absolute; opacity: 0;">
 <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
 
                   <!--start main content-->
                <section id="main-content" >
                    <div class="space-30"></div>
                    <div class="container">

                        <div class="row">
                            

                            <div class="col-sm-9">
                                <div class="panel">
                                    <div class="panel-body">
                                        <div class="row mail-header">
                                            <div class="col-md-6">
                                                <h1>스터디룸 등록</h1>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="pull-right tooltip-show">
                                                    <button type="button" class="btn btn-default btn-sm" onclick="mapp();" >지도</button>
                                                    <a href="mailbox.html" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="" data-original-title="Discard email"><i class="fa fa-times"></i> Discard</a>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="space-20"></div>
                                        <form name="addFrm" class="form-horizontal" method="get">
                                            <div class="form-group"><label class="col-sm-2 control-label">스터디룸 이름:</label>
											    <div class="col-sm-10"><input type="text" class="form-control" name="studyroom_name" ></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">스터디룸 주소:</label>
												 <div class="col-sm-10"><input type="text" class="form-control" name="addr1"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">스터디룸 상세주소:</label>
												 <div class="col-sm-10"><input type="text" class="form-control" name="addr2"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">스터디룸 연락처:</label>
												 <div class="col-sm-10"><input type="text" class="form-control" name="hp"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">스터디룸 비용:</label>
												 <div class="col-sm-10"><input type="text" class="form-control" name="cost"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">스터디룸 내용:</label>
												 <div class="col-sm-10"><input type="text" class="form-control" name="studyroom_no" style="height: 300px;"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">위도:</label>
												 <div class="col-sm-10"><input type="text" class="form-control" name="latitude"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">경도:</label>
												 <div class="col-sm-10"><input type="text" class="form-control" name="longitude"></div>
                                            </div>
                                            
                                            
                                            
                                            
                                            <div class="form-group"><label class="col-sm-2 control-label">스터디룸 이미지 갯수:</label>

                                                <div class="col-sm-10">
												
												<select id="select" class="btn btn-default dropdown-toggle">
												<option  value="1">1</option>
												<option  value="2">2</option>
												<option  value="3">3</option>
												<option  value="4">4</option>
												<option  value="5">5</option>
												</select>
													   
													   
													   <div id="attach" style="margin-top: 1%"></div>
													  
                                            </div><!--end btngroup-->
											
											
											
													   
												
											
													   
         		    								   <div id="divfileattach"></div>                                                    

                                                    <p class="help-block">Attache Photos, Files, Videos etc.</p>
                                                </div>
                                                
                                                
                                           </form>
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
                                                <div class="text-right" style="margin-right: 2%; margin-bottom: 2%">
                                                    <button type="submit" class="btn btn-primary btn-lg rounded" onClick="register()" >등록</button>
                                                    <button type="reset" class="btn btn-danger  btn-lg rounded">취소</button>
                                                   
                                                </div><!--.chat-area-bottom-->
                                            </div>
                                    </div><!--row end-->
                                </div>
                            </div>

                        </div><!--col-md-9 end-->

                    </div><!--row end-->
            

            <!--footer start-->
            <div class="footer">
                <div class="row">
                    <div class="col-sm-12">
                        <span>&copy; Copyright 2016. Assan</span>
                    </div>
                </div>
            </div>
            <!--footer end-->
        </section><!--end main content-->
  

            <!-- 맵-->
     <div id="map">
         </div>
         


<!--Common plugins-->
<%-- <script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/jquery/dist/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/hoe-nav/hoe.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/pace/pace.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/js/app.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/summernote/summernote.min.js"></script> --%>

<script>
   
     
    	
        $(document).ready(function(){

        	
        	   $('.summernote').summernote();
        	
        	 
    	}); // end of $(document).ready()-----------------------------------
    	
    	function register() {
    	
    		var addFrm = document.addFrm;
    		
    		addFrm.action = "/main/admin/addStudyroomEnd.action";
    		addFrm.method = "POST";
    		addFrm.enctype = "multipart/form-data";
    		addFrm.submit();
    	}
    	
     	$("#select").change(function () {
    		var str = ""; 
    		
    		var html = "";
			
    		
    		$("select option:selected").each(function () {
    			str += $(this).text() + " "; 
    			
    			str = Number(str);
    		    	
    			for(var i=0; i<str; i++){
    			
    				html += "<input type='file' name='attach' /><br/>";
    		
    				$("#attach").empty();
    			}
    			}); 
    		
    		$("#attach").append(html);
    	
    		
    	}).change();



    	var map;
        function initMap() {
          map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 37.533876, lng:  126.896947},
            zoom: 17
          });
        };
    	
        function mapp() {
            var myWindow = window.open("#", "MsgWindow", "width=600,height=400");
            
        
        };    	
</script>


<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCANQaZ2FG-T4yKB13PKlnjYxhZPz7gT80&callback=initMap">
    </script>
    

    
    
    
</body>
</html>