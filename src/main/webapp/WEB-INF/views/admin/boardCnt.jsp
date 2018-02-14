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
      <!--   <script src="http://code.jquery.com/jquery-latest.js"></script> -->

        
         
        <!-- alert2  --> 
         <!--  <link href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.min.css" rel="stylesheet">
          <script src=" https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.5/sweetalert2.common.min.js"></script>
         -->
        
		<!-- 하이차트 js-->
        <script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		
        
        
     
        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    
    <style>

    #container {
				min-width: 310px;
				max-width: 800px;
				height: 400px;
				margin: 0 auto
				}


</style>
    
    <body >

<div style="width: 95%; height: 500px;">  
	<div id="first" style="width: 40%; margin-top: 2%; margin-left: 4%; float: left; " ></div>

	<div id="second" style="width: 40%; margin-top: 2%; margin-left: 4%; float: left; " ></div>
</div>
     
  <div style="width: 95%; height: 500px;">  
	<div id="third" style="width: 40%; height: 400px;  margin: 0 auto; margin-left: 4%; float: left; "></div>

      <div id="fourth" style="width: 40%; height: 400px; margin: 0 auto; margin-left: 4%; float: left;"></div>       
  </div>
            
            


        <!--Common plugins-->
      <%--   <script src="<%=request.getContextPath()%>/resources/jquery/dist/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/hoe-nav/hoe.js"></script>
        <script src="<%=request.getContextPath()%>/resources/pace/pace.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/app.js"></script> --%>

        <!-- Datatables-->
      <%--   <script src="<%=request.getContextPath()%>/resources/datatables/jquery.dataTables.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/datatables/dataTables.responsive.min.js"></script>
         --%>
        
        
        
        
        
        <script>
            $(document).ready(function() {
      
            	 // Build the chart
                Highcharts.chart('third', {
                    chart: {
                        plotBackgroundColor: null,
                        plotBorderWidth: null,
                        plotShadow: false,
                        type: 'pie'
                    },
                    title: {
                        text: '서울시 구/군/구 별 예약 횟수'
                    },
                    tooltip: {
                        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                    },
                    plotOptions: {
                        pie: {
                            allowPointSelect: true,
                            cursor: 'pointer',
                            dataLabels: {
                                enabled: false
                            },
                            showInLegend: true
                        }
                    },
                    series: [{
                        name: 'Brands',
                        colorByPoint: true,
                        data: [{
                            name: '강남',
                            y: 56.33
                        }, {
                            name: '강서',
                            y: 24.03,
                            sliced: true,
                            selected: true
                        }, {
                            name: '강북',
                            y: 10.38
                        }, {
                            name: '강동',
                            y: 4.77
                        }]
                    }]
                });
        
        
        });//end of ready(function() {--------------------
            
            
            Highcharts.chart('second', {

                title: {
                    text: '게시판 년별 현황'
                },

                subtitle: {
                    text: '최근 6년'
                },

                yAxis: {
                    title: {
                        text: '게시판 수'
                    }
                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'middle'
                },

                plotOptions: {
                    series: {
                        pointStart: 2010
                    }
                },

                series: [{
                     name: '자유게시판',
                    data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
                }, {
                    name: '공스토리',
                    data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
                }, {
                    name: '공라이브',
                    data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
                }]

            });
            
            
            
            Highcharts.chart('first', {

                title: {
                    text: '예약 현황'
                },

                subtitle: {
                    text: '최근 6년'
                },

                yAxis: {
                    title: {
                        text: '예약 수'
                    }
                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'middle'
                },

                plotOptions: {
                    series: {
                        pointStart: 2010
                    }
                },

                series: [{
                    name: '예약수',
                    data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
                }, {
                    name: '예약 성사',
                    data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
                }]

            });
            
            
            Highcharts.chart('fourth', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: '매출액'
                },
                subtitle: {
                    text: '월별 현황'
                },
                xAxis: {
                    categories: [
                        'Jan',
                        'Feb',
                        'Mar',
                        'Apr',
                        'May',
                        'Jun',
                        'Jul',
                        'Aug',
                        'Sep',
                        'Oct',
                        'Nov',
                        'Dec'
                    ],
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: '원'
                    }
                },
                tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                        '<td style="padding:0"><b>{point.y:.1f}00 원</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: '강남',
                    data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

                }, {
                    name: '강서',
                    data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

                }, {
                    name: '강북',
                    data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

                }, {
                    name: '강동',
                    data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

                }]
            });
            
            
            
            
        </script>
        
        
        
        
        
    </body>
</html>