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
        <!-- dataTables -->
        <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
          <link href="<%=request.getContextPath()%>/resources/jaeyeon/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css">
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
    <body >

     


                <!--start main content-->
                <section id="main-content">
                    <div class="space-30"></div>
                    <div class="container">

                        <div class="row">

                            <div class="col-md-12">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <h1 class="panel-title">자유게시판 관리자용</h1>
                                    </header>
                                    <div class="panel-body">
                                        <table id="datatable" class="table table-striped dt-responsive nowrap">
                                            <thead>
                                                <tr>
                                                    <th>게시물 번호</th>
                                                    <th>게시물 이름</th>
                                                    <th>내용</th>
                                                    <th>글쓴날짜</th>
                                                    
                                                </tr>
                                            </thead>

                                            <tbody>
                                            
                                             	
                                                <tr>
                                                    <td>1</td>
                                                    <td>뭐냐 게시판</td>
                                                    <td>우왕.. 게시판이당... ;;;</td>
                                                    <td>2008/11/28
                                             		    <button type="button" class="btn btn-danger" onclick="del()"  style="float: right; height: 25px; font-size: 8pt;">삭제</button>
                                             		    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="float: right; height: 25px; font-size: 8pt;" > 수정</button>
                                                 </td>    
                                                </tr>
                                                
                                               
                                                                    
                                            </tbody>
                                        </table>
                                    </div><!--panel body end-->
                                </div><!--end panel-->
                            </div><!--col end-->
                        </div><!--row end-->
                    </div><!--container end-->

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
            


        <!--Common plugins-->
      <%--   <script src="<%=request.getContextPath()%>/resources/jquery/dist/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/hoe-nav/hoe.js"></script>
        <script src="<%=request.getContextPath()%>/resources/pace/pace.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/app.js"></script> --%>

        <!-- Datatables-->
        <script src="<%=request.getContextPath()%>/resources/datatables/jquery.dataTables.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/datatables/dataTables.responsive.min.js"></script>
        
        
        
        
        
        
        <script>
            $(document).ready(function() {
        $('#datatable').dataTable();
        
        
        
        });
            
            
            function del() {
                
                if (confirm("1번 게시물을  삭제하시겠습니까") == true) {
                  
                } else {
                	
                }
                
            }
            
            
            
        </script>
        
        
        
        
        
        
        
        
  <!-- Modal --> 
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">게시물 번호 <input readonly="readonly" value="1" />  </h4>
        </div>
        <div class="modal-body">
       
            <label for="inputlg">게시물 이름</label>
      <input class="form-control input-lg" id="inputlg" type="text" value="뭐냐 게시판">
      
         <label for="inputlg">게시물 내용</label>
      <input style="height: 500px;  "  class="form-control input-lg" id="inputlg" type="text" value="우왕....">
         
         
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">수정</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
        
        
        
        
        
        
        
        
        
    </body>
</html>