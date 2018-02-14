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
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout">

                   <!--start main content-->
                <section id="main-content">
                    <div class="space-30"></div>
                    <div class="container">

                        <div class="row">
                            

                            <div class="col-sm-9">
                                <div class="panel">
                                    <div class="panel-body">
                                       
                                        <hr>
                                        <div class="space-20"></div>
                                        <form class="form-horizontal" method="get">
                                          
                                            <div class="form-group"><label class="col-sm-2 control-label" style="text-align: center;">카테고리</label>
                                     <div class="col-sm-10" style="max-width: 30%"><input type="text" class="form-control"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label" style="text-align: center;">제목</label>
                                     <div class="col-sm-10"><input type="text" class="form-control" value=""></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label" style="text-align: center;">파일첨부</label>
                                  
                                     <div>&nbsp;&nbsp; <img src="<%= request.getContextPath() %>/resources/img/sm/img.PNG" class="img-qna">사진 &nbsp;
                                   		   <img src="<%= request.getContextPath() %>/resources/img/sm/file.PNG" class="img-qna">파일 &nbsp;
                                     	   <img src="<%= request.getContextPath() %>/resources/img/sm/rink.PNG" class="img-qna">링크
                                     </div>
                                            </div>
                                            
                                    <div>
            						<textarea name="content" class="long" style="height: 200px; width: 100%;"></textarea>
         						     </div> 
                                        </form>
                                        <div class="space-20"></div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                          
									                 <div class="form-group" align="center">
													 <div class="col-sm-offset-2 col-sm-10">
																    <button type="submit" class="btn btn-dark btn-lg">작성</button>
																                           
														 &nbsp;&nbsp;&nbsp;
																   <button type="reset" class="btn btn-dark btn-lg">취소</button>
													</div>
									            </div>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div>

                        </div><!--col-md-9 end-->

                    </div><!--row end-->
            </div><!--container end-->


<!--Common plugins-->
<%-- <script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/jquery/dist/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/hoe-nav/hoe.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/pace/pace.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/js/app.js"></script>
<script src="<%=request.getContextPath()%>/resources/jaeyeon/plugins/summernote/summernote.min.js"></script> --%>

<script>
    $(document).ready(function () {
        $('.summernote').summernote();
    });
</script>


</body>
</html>


add