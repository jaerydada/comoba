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

        <script src="assets/js/modernizr.js"></script>
        
        
        <!-- alert2  --> 
          <link href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.min.css" rel="stylesheet">
          <script src=" https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.common.min.js"></script>
        
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
                                        <h1 class="panel-title">회원조회 관리자용</h1>
                                    </header>
                                    <div class="panel-body">
                                        <table id="datatable" class="table table-striped dt-responsive nowrap">
                                            <thead>
                                                <tr>
                                                    <th>회원 번호</th>
                                                    <th>닉네임</th>
                                                    <th>이메일</th>
                                                    <th>회원가입 날짜</th>
                                                    <th>회원상태</th>
                                                    
                                                </tr>
                                            </thead>

                                            <tbody>
                                            
                                             	<tr>
                                                    <td>1</td>
                                                    <td>재리</td>
                                                    <td>woflek@naver.com</td>
                                                    <td>2008/11/28</td>
                                                     
                                                    <td> 회원중   
                                             		    <button type="button" class="btn btn-danger" onclick="del()" style="float: right; height: 25px; font-size: 8pt;">삭제</button>
                                             		    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="float: right; height: 25px; font-size: 8pt;" > 수정</button>
                                                    </td>    
                                                </tr>
                                                
                                            <tr>
                                                    <td>2</td>
                                                    <td>양모</td>
                                                    <td>yang@naver.com</td>
                                                    <td>2008/11/10</td>
                                                     
                                                    <td> 회원중   
                                             		    <button type="button" class="btn btn-danger" onclick="del()" style="float: right; height: 25px; font-size: 8pt;">삭제</button>
                                             		    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="float: right; height: 25px; font-size: 8pt;" > 수정</button>
                                                    </td>      
                                                </tr>
                                            
                                            <tr>
                                                    <td>3</td>
                                                    <td>태봉</td>
                                                    <td>tb@naver.com</td>
                                                    <td>2008/11/30</td>
                                                     
                                                    <td> 회원중   
                                             		    <button type="button" class="btn btn-danger" onclick="del()" style="float: right; height: 25px; font-size: 8pt;">삭제</button>
                                             		    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="float: right; height: 25px; font-size: 8pt;" > 수정</button>
                                                    </td>       
                                                </tr>
                                            
                                            <tr>
                                                    <td>4</td>
                                                    <td>재민</td>
                                                    <td>jaemin@naver.com</td>
                                                    <td>2009/5/02</td>
                                                    <td> 회원중   
                                             		    <button type="button" class="btn btn-danger" onclick="del()" style="float: right; height: 25px; font-size: 8pt;">삭제</button>
                                             		    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="float: right; height: 25px; font-size: 8pt;" > 수정</button>
                                                    </td>       
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td>5</td>
                                                    <td>쏭</td>
                                                    <td>ssong@naver.com</td>
                                                    <td>2005/11/28</td>
                                                     
                                                   <td> 회원탈퇴중 
                                             		    <button type="button" class="btn btn-danger" onclick="del()" style="float: right; height: 25px; font-size: 8pt;">삭제</button>
                                             		    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="float: right; height: 25px; font-size: 8pt;" > 수정</button>
                                                    </td>    
                                                </tr>
                                                                 
                                               
                                               <tr>
                                                    <td>6</td>
                                                    <td>월이</td>
                                                    <td>walle@naver.com</td>
                                                    <td>2010/11/28</td>
                                                     
                                                    <td> 회원중   
                                             		    <button type="button" class="btn btn-danger" onclick="del()" style="float: right; height: 25px; font-size: 8pt;">삭제</button>
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
                
            	swal({
            		  title: 'Are you sure?',
            		  text: "You won't be able to revert this!",
            		  type: 'warning',
            		  showCancelButton: true,
            		  confirmButtonColor: '#3085d6',
            		  cancelButtonColor: '#d33',
            		  confirmButtonText: 'Yes, delete it!',
            		  cancelButtonText: 'No, cancel!',
            		  confirmButtonClass: 'btn btn-success',
            		  cancelButtonClass: 'btn btn-danger',
            		  buttonsStyling: false
            		}).then(function () {
            		  swal(
            		    'Deleted!',
            		    'Your file has been deleted.',
            		    'success'
            		  )
            		}, function (dismiss) {
            		  // dismiss can be 'cancel', 'overlay',
            		  // 'close', and 'timer'
            		  if (dismiss === 'cancel') {
            		    swal(
            		      'Cancelled',
            		      'Your imaginary file is safe :)',
            		      'error'
            		    )
            		  }
            		});
                
            };
            
            
        </script>
        
        
        
        
        
        
        
        
  <!-- Modal --> 
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">회원 번호 <input readonly="readonly" value="1" />  </h4>
        </div>
        <div class="modal-body">
       
            <label for="inputlg">닉네임</label>
      <input class="form-control input-lg" id="inputlg" type="text" value="재리">
      
         <label for="inputlg">이메일</label>
      <input class="form-control input-lg" id="inputlg" type="text" value="woflek@naver.com">
            <label for="inputlg">가입날짜</label>
      <input class="form-control input-lg" id="inputlg" type="text" value="2008/11/28" readonly="readonly">
      
         <label for="inputlg">가입상태</label>
      <input class="form-control input-lg" id="inputlg" type="text"  >
         
          
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