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
  
  
  <style type="text/css">
     .checkbox[type=checkbox], .checkbox[type=radio] {display:none;}
label.input-label { 
  display: inline-block;
  font-size: 13px;
  cursor: pointer;
  }
label.input-label::before {
  display: inline-block;
  margin:0 10px;
  font-family: FontAwesome;
  font-size: 20px;
  color: rgba(4, 120, 193,0.2);
  -webkit-transition: transform 0.2s ease-out, color 0.2s ease;
  -moz-transition: transform 0.2s ease-out, color 0.2s ease;
  -ms-transition: transform 0.2s ease-out, color 0.2s ease;
  -o-transition: transform 0.2s ease-out, color 0.2s ease;
  transition: transform 0.2s ease-out, color 0.2s ease;
  -webkit-transform: scale3d(0.8,0.8,1);
  -moz-transform: scale3d(0.8,0.8,1);
  -ms-transform: scale3d(0.8,0.8,1);
  -o-transform: scale3d(0.8,0.8,1);
  transform: scale3d(0.8,0.8,1);
}
label.input-label.checkbox::before {
  content: "\f0c8";
}
label.input-label.radio::before {
  content: "\f111";
}
input.checkbox + label.input-label:hover::before {
  -webkit-transform: scale3d(1,1,1);
  -moz-transform: scale3d(1,1,1);
  -ms-transform: scale3d(1,1,1);
  -o-transform: scale3d(1,1,1);
  transform: scale3d(1,1,1);
}

input.checkbox + label.input-label:active::before {
  -webkit-transform: scale3d(1.5,1.5,1);
  -moz-transform: scale3d(1.5,1.5,1);
  -ms-transform: scale3d(1.5,1.5,1);
  -o-transform: scale3d(1.5,1.5,1);
  transform: scale3d(1.5,1.5,1);
}

input.checkbox:checked + label.input-label::before {
  display: inline-block; 
  font-family: FontAwesome; 
  color:#0478c1;
  -webkit-transform: scale3d(1,1,1);
  -moz-transform: scale3d(1,1,1);
  -ms-transform: scale3d(1,1,1);
  -o-transform: scale3d(1,1,1);
  transform: scale3d(1,1,1);
}
input.checkbox:checked + label.input-label.checkbox::before {
    content:"\f14a";
}
input.checkbox:checked + label.input-label.radio::before {
    content:"\f058";
}
  

  
  .form-control{
     width: 100px;
  
  }
  
  
  </style>
  
  
<%--   
 <script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/jquery-2.0.0.js"></script> 
 <script src="<%=request.getContextPath()%>/resources/js/jquery-ui.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script> --%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script type="text/javascript">

 
   $(document).ready(function() {

      $(function() {
         
         var dateFormat = "dd/mm/yy",
            from = $("#from").datepicker({
               monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
               monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
               dayNames : ['일', '월', '화', '수', '목', '금', '토'],
               dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
               dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],

               dateFormat: "yy-mm-dd",
               defaultDate : "+1w",
               changeMonth : true,
               numberOfMonths : 1,
               /* 날짜 유효성 체크 */ 
               onClose: function( selectedDate ) { 
                 $('#fromDate').datepicker("option","minDate", selectedDate); 
               }

         }).on("change", function() {
            to.datepicker("option", "minDate", getDate(this));
         }), to = $("#to").datepicker({
            monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
            monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
            dayNames : ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],

            dateFormat: "yy-mm-dd",
            defaultDate : "+1w",
            changeMonth : true,
            numberOfMonths : 1,
            /* 날짜 유효성 체크 */ 
            onClose: function( selectedDate ) { 
              $('#fromDate').datepicker("option","minDate", selectedDate); 
            }
         }).on("change", function() {
            from.datepicker("option", "maxDate", getDate(this));
         });
      });

         
   });   // end of $(document).ready(function()-----------------   
 </script>
    
    
    
    <body style="height: 100%;">


<!--end main content-->
                    <!--start main content-->
        
      <div>
         <div class="panel">
             <div class="panel-body">
                 <div class="row mail-header">
                     <div style="margin-left: 5%; margin-top: 2%;">
                         <h3>방송하기</h3>
                     </div>
                     <div class="col-md-6">
                         <div class="pull-right tooltip-show">
                             <a href="#" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title="" data-original-title="다시 작성하시겠습니까?"><i class="fa fa-times"></i>비우기</a>
                         </div>
                     </div>
                 </div>
                 <hr>
                 <div class="space-20"></div>
                 <div style="padding-left: 5%; padding-right: 5%;" >
                 <form class="form-horizontal" method="get">
                   <table id="writelivetbl">
                   <tr> 
                   <td class="form-group" style="width: 100%;"> 
                       방송기간 설정&nbsp; :  &nbsp;  
                   </td>
                   <td>    
                  <label for="from">From</label><input type="text" id="from" name="from" class="form-control" style="width: 100px;" />
                  <label for="to">to</label><input type="text" id="to" name="to" class="form-control" />   
               </td>
                   </tr>
                   <tr>
                      <td>
                      방송요일 설정&nbsp; :  &nbsp;  
                    <input type="checkbox" id="select0" value="0" class="checkbox">
                    <label for="select0" class="input-label checkbox">월</label>
                    <input type="checkbox" id="select1" value="1" class="checkbox">
                    <label for="select1" class="input-label checkbox">화</label>
                    <input type="checkbox" id="select2" value="2" class="checkbox">
                    <label for="select2" class="input-label checkbox">수</label>
                    <input type="checkbox" id="select3" value="3" class="checkbox">
                    <label for="select3" class="input-label checkbox">목</label>
                    <input type="checkbox" id="select4" value="4" class="checkbox">
                    <label for="select4" class="input-label checkbox">금</label>
                    <input type="checkbox" id="select5" value="5" class="checkbox">
                    <label for="select5" class="input-label checkbox">토</label>
                    <input type="checkbox" id="select6" value="6" class="checkbox">
                    <label for="select6" class="input-label checkbox">일</label>
                      </td>
                   </tr>
                   <tr>
                      <td  class="form-group">
                         제목&nbsp; :  &nbsp;
                           <input type="text" id="title" name="title" class="form-control" />
                      </td>
                   </tr>
                  
                  </table>
                  </form>
                  </div>               
        
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
      



          <!--Common plugins--><%-- 
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/jquery/dist/jquery.min.js"></script> --%>
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