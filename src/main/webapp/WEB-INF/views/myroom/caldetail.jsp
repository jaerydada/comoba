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
        <link href='<%=request.getContextPath() %>/resources/calendar/plugins/fullcalendar/fullcalendar.css' rel="stylesheet">

        <!--template custom css file-->
        <link href="<%=request.getContextPath() %>/resources/calendar/css/style.css" rel="stylesheet">

        <script src="<%=request.getContextPath() %>/resources/calendar/js/modernizr.js"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body style="height: 100%;">

        <!--side navigation start-->
       
 
          <form name=calFrm>

                <!--start main content-->
                
                    <div class="" style="height: 650px;">
                       <div id="sm_sik">
                     
                                           
                                            <div class="col-md-9" style="min-width: 250px; width:5%; height: 95%; float: left;" >
                                            
                                            
                                                <div id="" class="fc fc-ltr fc-unthemed"> <!-- calendar -->
                                              
                                                <div class="fc-view-container" style="">
                                                <div class="fc-view fc-month-view fc-basic-view" style="">
                                                <table>
                                                <thead class="fc-head">
                                                <tr>
                                                <td class="fc-head-container fc-widget-header">
                                                <div class="fc-row fc-widget-header">
                                                <table>
                                                <thead>
                                                <tr>
                                                <th class="fc-day-header fc-widget-header fc-sun">Sun</th>
                                                <th class="fc-day-header fc-widget-header fc-mon">Mon</th>
                                                <th class="fc-day-header fc-widget-header fc-tue">Tue</th>
                                                <th class="fc-day-header fc-widget-header fc-wed">Wed</th>
                                                <th class="fc-day-header fc-widget-header fc-thu">Thu</th>
                                                <th class="fc-day-header fc-widget-header fc-fri">Fri</th>
                                                <th class="fc-day-header fc-widget-header fc-sat">Sat</th>
                                                </tr>
                                                </thead>
                                                </table>
                                                </div>
                                                </td>
                                                </tr>
                                                </thead>
                                                
                                                <tbody class="fc-body">
                                                <tr>
                                                <td class="fc-widget-content">
                                                <div class="fc-scroller fc-day-grid-container" style="overflow: hidden; height: 582px;">
                                                <div class="fc-day-grid fc-unselectable"><div class="fc-row fc-week fc-widget-content" style="height: 97px;">
                                                <div class="fc-bg">
                                                <table>
                                                <tbody>
                                                <tr>
                                                <td class="fc-day fc-widget-content fc-sun fc-other-month fc-past sm_write" data-date="2017-05-28"></td>
                                                <td class="fc-day fc-widget-content fc-mon fc-other-month fc-past sm_write" data-date="2017-05-29"></td>
                                                <td class="fc-day fc-widget-content fc-tue fc-other-month fc-past sm_write" data-date="2017-05-30"></td>
                                                <td class="fc-day fc-widget-content fc-wed fc-other-month fc-past sm_write" data-date="2017-05-31"></td>
                                                <td class="fc-day fc-widget-content fc-thu fc-past sm_write" data-date="2017-06-01"></td>
                                                <td class="fc-day fc-widget-content fc-fri fc-past sm_write" data-date="2017-06-02"></td>
                                                <td class="fc-day fc-widget-content fc-sat fc-past sm_write" data-date="2017-06-03"></td>
                                                </tr>
                                                </tbody>
                                                </table>
                                                </div>
                                                <div class="fc-content-skeleton">
                                                <table>
                                                <thead>
                                                <tr>
                                                <td class="fc-day-number fc-sun fc-other-month fc-past" data-date="2017-05-28">28</td>
                                                <td class="fc-day-number fc-mon fc-other-month fc-past" data-date="2017-05-29">29</td>
                                                <td class="fc-day-number fc-tue fc-other-month fc-past" data-date="2017-05-30">30</td>
                                                <td class="fc-day-number fc-wed fc-other-month fc-past" data-date="2017-05-31">31</td>
                                                <td class="fc-day-number fc-thu fc-past" data-date="2017-06-01">1</td>
                                                <td class="fc-day-number fc-fri fc-past" data-date="2017-06-02">2</td>
                                                <td class="fc-day-number fc-sat fc-past" data-date="2017-06-03">3</td>
                                                </tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div>
                                                <div class="fc-row fc-week fc-widget-content" style="height: 97px;"><div class="fc-bg">
                                                <table>
                                                <tbody>
                                                <tr>
                                                <td class="fc-day fc-widget-content fc-sun fc-past sm_write" data-date="2017-06-04"></td>
                                                <td class="fc-day fc-widget-content fc-mon fc-past sm_write" data-date="2017-06-05"></td>
                                                <td class="fc-day fc-widget-content fc-tue fc-past sm_write" data-date="2017-06-06"></td>
                                                <td class="fc-day fc-widget-content fc-wed fc-past sm_write" data-date="2017-06-07"></td>
                                                <td class="fc-day fc-widget-content fc-thu fc-past sm_write" data-date="2017-06-08"></td>
                                                <td class="fc-day fc-widget-content fc-fri fc-past sm_write" data-date="2017-06-09"></td>
                                                <td class="fc-day fc-widget-content fc-sat fc-past sm_write" data-date="2017-06-10"></td>
                                             	</tr></tbody></table></div>
                                             	<div class="fc-content-skeleton">
                                             	<table>
                                             	<thead>
                                             	<tr>
                                             	<td class="fc-day-number fc-sun fc-past" data-date="2017-06-04">4</td>
                                             	<td class="fc-day-number fc-mon fc-past" data-date="2017-06-05">5</td>
                                             	<td class="fc-day-number fc-tue fc-past" data-date="2017-06-06">6</td>
                                             	<td class="fc-day-number fc-wed fc-past" data-date="2017-06-07">7</td>
                                             	<td class="fc-day-number fc-thu fc-past" data-date="2017-06-08">8</td>
                                             	<td class="fc-day-number fc-fri fc-past" data-date="2017-06-09">9</td>
                                             	<td class="fc-day-number fc-sat fc-past" data-date="2017-06-10">10</td></tr></thead><tbody><tr><td></td><td></td>
                                             	<td class="fc-event-container">
                                             	<a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end  fc-draggable fc-resizable">
                                             	<div class="fc-content"> <span class="fc-title">My Event 2</span></div>
                                             	<div class="fc-resizer fc-end-resizer"></div></a></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div>
                                             	<div class="fc-row fc-week fc-widget-content" style="height: 97px;">
                                             	<div class="fc-bg"><table><tbody><tr>
                                             	<td class="fc-day fc-widget-content fc-sun fc-past sm_write" data-date="2017-06-11"></td>
                                             	<td class="fc-day fc-widget-content fc-mon fc-past sm_write" data-date="2017-06-12"></td>
                                             	<td class="fc-day fc-widget-content fc-tue fc-past sm_write" height="55px;" data-date="2017-06-13"></td>
                                             	<td class="fc-day fc-widget-content fc-wed fc-today fc-state-highlight" sm_write data-date="2017-06-14"></td>
                                             	<td class="fc-day fc-widget-content fc-thu fc-future sm_write" data-date="2017-06-15"></td>
                                             	<td class="fc-day fc-widget-content fc-fri fc-future sm_write" data-date="2017-06-16"></td>
                                             	<td class="fc-day fc-widget-content fc-sat fc-future sm_write" data-date="2017-06-17"></td>
                                             	</tr></tbody></table></div><div class="fc-content-skeleton">
                                             	
                                             	<table>
                                             	<thead>
                                             	<tr>
                                             	<td class="fc-day-number fc-sun fc-past" data-date="2017-06-11">11</td>
                                             	<td class="fc-day-number fc-mon fc-past" data-date="2017-06-12">12</td>
                                             	<td class="fc-day-number fc-tue fc-past" data-date="2017-06-13">13</td>
                                             	<td class="fc-day-number fc-wed fc-today fc-state-highlight" data-date="2017-06-14">14</td>
                                             	<td class="fc-day-number fc-thu fc-future" data-date="2017-06-15">15</td>
                                             	<td class="fc-day-number fc-fri fc-future" data-date="2017-06-16">16</td>
                                             	<td class="fc-day-number fc-sat fc-future" data-date="2017-06-17">17</td>
                                             	</tr></thead><tbody><tr><td></td><td></td><td class="fc-event-container">
                                             	<a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end  fc-draggable fc-resizable">
                                             	<div class="fc-content"> <span class="fc-title">My Event 4</span></div>
                                             	<div class="fc-resizer fc-end-resizer"></div></a></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div>
                                             	
                                             	<div class="fc-row fc-week fc-widget-content" style="height: 97px;"><div class="fc-bg">
                                             	<table><tbody><tr>
                                             	<td class="fc-day fc-widget-content fc-sun fc-future sm_write" data-date="2017-06-18"></td>
                                             	<td class="fc-day fc-widget-content fc-mon fc-future sm_write" data-date="2017-06-19"></td>
                                             	<td class="fc-day fc-widget-content fc-tue fc-future sm_write" data-date="2017-06-20"></td>
                                             	<td class="fc-day fc-widget-content fc-wed fc-future sm_write" data-date="2017-06-21"></td>
                                             	<td class="fc-day fc-widget-content fc-thu fc-future sm_write" data-date="2017-06-22"></td>
                                             	<td class="fc-day fc-widget-content fc-fri fc-future sm_write" data-date="2017-06-23"></td>
                                             	<td class="fc-day fc-widget-content fc-sat fc-future sm_write" data-date="2017-06-24"></td></tr></tbody></table></div>
                                             	<div class="fc-content-skeleton">
                                             	<table><thead><tr>
                                             	<td class="fc-day-number fc-sun fc-future" data-date="2017-06-18">18</td>
                                             	<td class="fc-day-number fc-mon fc-future" data-date="2017-06-19">19</td>
                                             	<td class="fc-day-number fc-tue fc-future" data-date="2017-06-20">20</td>
                                             	<td class="fc-day-number fc-wed fc-future" data-date="2017-06-21">21</td>
                                             	<td class="fc-day-number fc-thu fc-future" data-date="2017-06-22">22</td>
                                             	<td class="fc-day-number fc-fri fc-future" data-date="2017-06-23">23</td>
                                             	<td class="fc-day-number fc-sat fc-future" data-date="2017-06-24">24</td>
                                             	</tr></thead><tbody><tr><td></td><td></td><td class="fc-event-container">
                                             	<a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end  fc-draggable fc-resizable">
                                             	<div class="fc-content"> <span class="fc-title">My Event 4</span></div>
                                             	<div class="fc-resizer fc-end-resizer"></div></a></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div>
                                             	<div class="fc-row fc-week fc-widget-content" style="height: 97px;">
                                             	<div class="fc-bg">
                                             	<table><tbody><tr>
                                             	<td class="fc-day fc-widget-content fc-sun fc-future sm_write" data-date="2017-06-25"></td>
                                             	<td class="fc-day fc-widget-content fc-mon fc-future sm_write" data-date="2017-06-26"></td>
                                             	<td class="fc-day fc-widget-content fc-tue fc-future sm_write" data-date="2017-06-27"></td>
                                             	<td class="fc-day fc-widget-content fc-wed fc-future sm_write" data-date="2017-06-28"></td>
                                             	<td class="fc-day fc-widget-content fc-thu fc-future sm_write" data-date="2017-06-29"></td>
                                             	<td class="fc-day fc-widget-content fc-fri fc-future sm_write" data-date="2017-06-30"></td>
                                             	<td class="fc-day fc-widget-content fc-sat fc-other-month fc-future" data-date="2017-07-01"></td>
                                             	</tr></tbody></table></div>
                                             	<div class="fc-content-skeleton">
                                             	<table><thead><tr>
                                             	<td class="fc-day-number fc-sun fc-future" data-date="2017-06-25">25</td>
                                             	<td class="fc-day-number fc-mon fc-future" data-date="2017-06-26">26</td>
                                             	<td class="fc-day-number fc-tue fc-future" data-date="2017-06-27">27</td>
                                             	<td class="fc-day-number fc-wed fc-future" data-date="2017-06-28">28</td>
                                             	<td class="fc-day-number fc-thu fc-future" data-date="2017-06-29">29</td>
                                             	<td class="fc-day-number fc-fri fc-future" data-date="2017-06-30">30</td>
                                             	<td class="fc-day-number fc-sat fc-other-month fc-future" data-date="2017-07-01">1</td></tr></thead><tbody>
                                             	<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div>
                                             	<div class="fc-row fc-week fc-widget-content" style="height: 97px;"><div class="fc-bg">
                                             	<table><tbody><tr>
                                             	<td class="fc-day fc-widget-content fc-sun fc-other-month fc-future sm_write" data-date="2017-07-02"></td>
                                             	<td class="fc-day fc-widget-content fc-mon fc-other-month fc-future sm_write" data-date="2017-07-03"></td>
                                             	<td class="fc-day fc-widget-content fc-tue fc-other-month fc-future sm_write" data-date="2017-07-04"></td>
                                             	<td class="fc-day fc-widget-content fc-wed fc-other-month fc-future sm_write" data-date="2017-07-05"></td>
                                             	<td class="fc-day fc-widget-content fc-thu fc-other-month fc-future sm_write" data-date="2017-07-06"></td>
                                             	<td class="fc-day fc-widget-content fc-fri fc-other-month fc-future sm_write" data-date="2017-07-07"></td>
                                             	<td class="fc-day fc-widget-content fc-sat fc-other-month fc-future sm_write" data-date="2017-07-08"></td></tr></tbody></table></div>
                                             	<div class="fc-content-skeleton">
                                             	<table><thead><tr>
                                             	<td class="fc-day-number fc-sun fc-other-month fc-future" data-date="2017-07-02">2</td>
                                             	<td class="fc-day-number fc-mon fc-other-month fc-future" data-date="2017-07-03">3</td>
                                             	<td class="fc-day-number fc-tue fc-other-month fc-future" data-date="2017-07-04">4</td>
                                             	<td class="fc-day-number fc-wed fc-other-month fc-future" data-date="2017-07-05">5</td>
                                             	<td class="fc-day-number fc-thu fc-other-month fc-future" data-date="2017-07-06">6</td>
                                             	<td class="fc-day-number fc-fri fc-other-month fc-future" data-date="2017-07-07">7</td>
                                             	<td class="fc-day-number fc-sat fc-other-month fc-future" data-date="2017-07-08">8</td>
                                             	</tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div></div></div></td></tr></tbody></table></div></div></div>

                                            </div>
                                   
                                	<div style="border: solid 7px #909090; float:left; width:1%; height: 650px; "></div>
                                     
                                       </div>
                                       
                                         <div style="float:left; width:60%; height: 650px; text-align: left; margin-left: 55px;" align="right"> 
                                      
                                              
                                        <div  style="font-size: 13pt; font-weight: bold; font-family: sans-serif;  ">
                                        <hr>
                                        <br>  <strong>[6/10] 파이널 스터디 모임</strong> 
                                        <a href="/main/myroom/calwrite.action"><span style="float: right">
                                        <img src="<%= request.getContextPath() %>/resources/img/sm/edit.png" width="auto;" height="27px;"></span></a>
                                        </div>
                                        <div class="mail-content margin-b-20" style="font-size: 11pt;">
                                       <p>     
                                       
                                       <br>&nbsp;&nbsp;
                                            -강남 6시 <a href="">OOO 스터디 카페</a>모임(if 걸어서 우리와 제휴 스터디룸은 클릭가능)<br><br>
                                            <span style=" font-weight: bold;">시간&nbsp;:&nbsp;</span> 14:00 ~ 17:00<br>
                                           <span style="font-size:12pt; font-weight: bold;"> 내용 및 미션&nbsp;:&nbsp;</span><br>
                                           &nbsp;&nbsp; ⇒ 각자 컴퓨터에 스프링 설치<br>
                                          &nbsp;&nbsp;  ⇒ 디비 설계<br>
                                         &nbsp;&nbsp;   ⇒ 뷰단 마무리<br>
                                          </p>
                                          <p style="float: right;">  
                                               <span style="font-size: 10pt;"> <a href="/main/index.action">스케쥴 수정하기 </a></span>
                                           </p>
                                           
                                           <br>
                                           <p>
                                           <div  style="font-size: 13pt; font-weight: bold; font-family: sans-serif;  ">
                                        <hr>
                                        <br>  <strong>[6/10] 미션 목록 (1/3)</strong>
                                        </div>
                                           </p>
                                           <p>
                                           스프링 설치하기		<input type="checkbox" style="float: right" /> <br>
                                           뷰단 만들기		<input type="checkbox" style="float: right"/><br>
                                           오라클 연결하기		<input type="checkbox" style="float: right"/><br>
                                           
                                           </p>
                                           <p style="float: right;">  
                                               <span style="font-size: 10pt;"> <a href="/main/index.action">미션 추가하기 </a></span>
                                           </p>
                                        </div>
                                       
                                       
                                       </div>
                        </div>
</form>
    
<!--end main content-->
            
       


        <!--Common plugins-->
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/jquery/dist/jquery.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/hoe-nav/hoe.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/pace/pace.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/js/app.js"></script>
        <!--page js-->
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/momentJs/moment.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/calendar/plugins/fullcalendar/fullcalendar.min.js"></script>
        
        
        
        <script>
            $(document).ready(function () {
                /* initialize the external events
                 -----------------------------------------------------------------*/
                $('#external-events .fc-event').each(function () {

                    // store data so the calendar knows to render an event upon drop
                    $(this).data('event', {
                        title: $.trim($(this).text()), // use the element's text as the event title
                        stick: true // maintain when user navigates (see docs on the renderEvent method)
                    });

                    // make the event draggable using jQuery UI
                    $(this).draggable({
                        zIndex: 999,
                        revert: true, // will cause the event to go back to its
                        revertDuration: 0  //  original position after the drag
                    });

                });


                /* initialize the calendar
                 -----------------------------------------------------------------*/

                $('#calendar').fullCalendar({
                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay'
                    },
                    editable: true,
                    droppable: true, // this allows things to be dropped onto the calendar
                    drop: function () {
                        // is the "remove after drop" checkbox checked?
                        if ($('#drop-remove').is(':checked')) {
                            // if so, remove the element from the "Draggable Events" list
                            $(this).remove();
                        }
                    }
                });
          

        </script>
    </body>
</html>