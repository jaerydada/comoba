<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>assan - Professional theme</title>

         <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">              
        <!-- font awesome for icons -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- flex slider css -->
        <link href="css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="screen">
        <!--owl carousel css-->
        <link href="owl-carousel/assets/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="owl-carousel/assets/owl.theme.default.css" rel="stylesheet" type="text/css" media="screen">
        <!--mega menu -->
        <link href="css/yamm.css" rel="stylesheet" type="text/css">
        <!--popups css-->
        <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
        <!-- custom css (blue color by default) -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

   
<style type="text/css">
	table, th, td {border: solid wh 1px;}
	#table {border-collapse: collapse; width: 820px;} 
	#table th, #table td {padding: 5px;}
	#table th {background-color: #ffffff;}
	
	a{text-decoration: none;} 
	    
</style>
   </head>
    <body>  
    
    
    <script type="text/javascript">
	$(document).ready(function(){
		
		searchKeep();
		
	//	===== #147. Ajax 로 검색어 입력시 자동글 완성하기 2 =====
		$("#displayList").hide();
	
	    $("#search").keyup(function(){
	    	
	    	var form_data = { colname : $("#colname").val(),  // 키값 : 밸류값 
	    	       		      search  : $("#search").val()    // 키값 : 밸류값 
	    	       		    };
	    	
	    	$.ajax({
	    		url: "/board/wordSearchShow.action",
	    		type: "GET",
	    		data: form_data,  // url 요청페이지로 보내는 ajax 요청 데이터
	    		dataType: "JSON", 
	    		success: function(data){
	    			
	    		// ===== #152. Ajax 로 검색어 입력시 자동글 완성하기 7 ===== 
	    		   if(data.length > 0) {
	    			  // 검색된 데이터가 있는 경우.
	    			  // 조심할것은 if(data != null) 으로 하면 안된다.
	    			   var resultHTML = "";
	    			  
	    			   $.each(data, function(entryIndex, entry){
	    				   var wordstr = entry.RESULTDATA.trim();
						    // 검색어 - 영주                    aj
						    // 결과물 - 김영주 프로그래머     AJAX
                            //         김영주바둑기사        ajax 프로그래밍
                            //         영주사과
                           
                            var index = wordstr.toLowerCase().indexOf( $("#search").val().toLowerCase() ); 
						    var len = $("#search").val().length;
						    var result = "";
						    
						    result = "<span class='first' style='color: blue;'>" +wordstr.substr(0, index)+ "</span>" + "<span class='second' style='color: red; font-weight: bold;'>" +wordstr.substr(index, len)+ "</span>" + "<span class='third' style='color: blue;'>" +wordstr.substr(index+len, wordstr.length - (index+len) )+ "</span>";        
                           
							resultHTML += "<span style='cursor: pointer;'>" + result + "</span><br/>"; 	   
	    			   });
	    			  
	    			   $("#displayList").html(resultHTML);
	    			   $("#displayList").show();
	    		   }
	    		   else {
	    			  // 검색된 데이터가 없는 경우.
	    			  // 조심할것은 if(data == null) 으로 하면 안된다.
	    			   $("#displayList").hide();
	    		   }
	    			
	    		},
	    		error: function(){
	   				  alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error); 
	   		    }
	    	});
	    	
	    }); // end of keyup(function(){})---------
	    
	    
	    // ===== #153. Ajax 로 검색어 입력시 자동글 완성하기 8 ===== 
	    $("#displayList").click(function(event){
			var word = "";
			
			var $target = $(event.target);
			
			if($target.is(".first")) {
				word = $target.text() + $target.next().text() + $target.next().next().text();
			//	alert(word);
			}
			else if($target.is(".second")) {
				word = $target.prev().text() + $target.text() + $target.next().text();
			//	alert(word);
			}
			else if($target.is(".third")) {
				word = $target.prev().prev().text() + $target.prev().text() + $target.text();
			//	alert(word);
			}
			
			$("#search").val(word); // 텍스트박스에 검색된 결과의 문자열을 입력해준다.
			
			$("#displayList").hide();
			
	    });// end of $("#displayList").click()---------	
	    
		
		
	});// end of $(document).ready()----------------------
	
	
	function goSearch(){
		
		var searchFrm = document.searchFrm;
		
		var search = $("#search").val();
		
		if(search.trim() == "") {
			alert("검색어를 입력하세요!!");
		}
		else {
			searchFrm.action = "/board/list.action";
			searchFrm.method = "GET";
			searchFrm.submit();
		}
		
	}
	
	
	function searchKeep(){
		<c:if test="${not empty colname && not empty search}">
			$("#colname").val("${colname}"); // 검색어 컬럼명을 유지시켜 주겠다.
			$("#search").val("${search}");   // 검색어를 유지시켜 주겠다.
		</c:if>
	}
	
	

</script>
 
  
 
       <div class="breadcrumb-wrap">
            <div class="container">
                
                    <div class="col-sm-6">
                        <h4>자유게시판</h4>
                    </div>
                    <div class="col-sm-6 hidden-xs text-right">
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li>자유게시판</li>
                        </ol>
                    </div>
               
            </div>
        </div>
     
     
 	<div id="table" style="border: solid 0px red; width:100%;" align="center">

     
   	 <div class="col-md-6" align="center"style="width: 100%; height: auto;">
            <img src="<%= request.getContextPath() %>/resources/img/sm/study4.PNG" class="img-qna" alt="1"  style="width: 800px; height: auto; ">
     </div>
         
         
    
	</table>
	
	
	<!-- --- -->
	 					  <div class="row" align="center" style="width: 80%;">
                        
                                <div class="panel" align="center">
                                    <header class="panel-heading">
                                        <h2 class="panel-title">목록</h2>
                                    </header>
                                    <div class="panel-body">
                                         <table class="table table-hover">
                  <thead>
                    <tr>
                      
                      <th>글번호</th>
                      <th>제목</th>
                      <th>성명</th>
                      <th>날짜</th>
                      <th>조회수</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>자유게시판 글 제목 1</td>
                      <td>안태연</td>
                      <td>2017-06-15</td>
                      <td>4</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>자유게시판 글 제목 2</td>
                      <td>양승모</td>
                      <td>2017-06-15</td>
                      <td>10</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>자유게시판 글 제목 3</td>
                      <td>김송희</td>
                      <td>2017-06-15</td>
                      <td>1</td>
                    </tr>
                      <tr>
                      <th scope="row">3</th>
                      <td>자유게시판 글 제목 3</td>
                      <td>박월성</td>
                      <td>2017-06-15</td>
                      <td>1</td>
                    </tr>
                      <tr>
                      <th scope="row">3</th>
                      <td>자유게시판 글 제목 3</td>
                      <td>김재연</td>
                      <td>2017-06-15</td>
                      <td>1</td>
                    </tr>
                    
                  </tbody>
                </table>
                
                               
                  <div style="margin-top: 20px;" align="right">
		<button type="button" style="background-color: white; border: solid 1px gray;" onClick="javascript:location.href='<%= request.getContextPath() %>/ourroom/add.action'">글쓰기</button>&nbsp;
		<button type="button" style="background-color: white; border: solid 1px gray;" onClick="javascript:location.href='<%= request.getContextPath() %>/list.action'">글목록</button>
		
	</div>          
                         
                         
                                
                                </div>
                            </div>
                
                            <!--col end-->	
	
	
	          
<!--    <!-- ===== #103. 글검색 폼 추가하기 : 제목, 내용, 글쓴이로 검색하도록 한다. ===== 
	<form name="searchFrm"  align="left">
		<select name="colname" id="colname" align="right" style="width: 5%; height: 32px;">
			<option value="subject">제목</option>
			<option value="content">내용</option>
			<option value="name">성명</option>
		</select>
		<input type="text" name="search" id="search" size="40px"/>
		<button type="button" onClick="goSearch();">검색</button>
	</form>
	
	<table border="1" width="100" height="100">
	</table> -->
	
<div>
	
	
<%-- 	<table id="table" align="center" >
		<tr>
			<th style="width: 70px;" >글번호</th>
			<th style="width: 360px;" >제목</th>
			<th style="width: 70px;" >성명</th>
			<th style="width: 180px;" >날짜</th>
			<th style="width: 70px;" >조회수</th>
		</tr>
		
		<c:forEach var="boardvo" items="${boardList}" varStatus="status"> 
			<tr>
				<td align="center">${boardvo.seq}</td>
				<td>
	             <!-- ===== #126. 답변글인 경우 제목앞에 공백(여백)과 함께 Re 라는 글자를 붙이도록 한다. ===== -->
	             <!-- 답변글이 아닌 원글인 경우 -->
	             <c:if test="${boardvo.depthno == 0}">
		             <c:if test="${boardvo.commentCount > 0}">			
					 <a href="<%= request.getContextPath() %>/view.action?seq=${boardvo.seq}">${boardvo.subject}<span style="color: red; font-weight: bold; font-style: italic; font-size: smaller; vertical-align: super; ">[${boardvo.commentCount}]</span></a> 
					 </c:if>
					 
					 <c:if test="${boardvo.commentCount == 0}">
					 <a href="<%= request.getContextPath() %>/view.action?seq=${boardvo.seq}">${boardvo.subject}</a>
					 </c:if>
	             </c:if>
	             
	             <!-- 답변글인 경우 --> 
	             <c:if test="${boardvo.depthno > 0}">
		             <c:if test="${boardvo.commentCount > 0}">			
					 <a href="<%= request.getContextPath() %>/view.action?seq=${boardvo.seq}"><span style="color: red; font-style: italic; padding-left: ${boardvo.depthno * 20}px;">┗Re</span>${boardvo.subject}<span style="color: red; font-weight: bold; font-style: italic; font-size: smaller; vertical-align: super; ">[${boardvo.commentCount}]</span></a> 
					 </c:if>
					 
					 <c:if test="${boardvo.commentCount == 0}">
					 <a href="<%= request.getContextPath() %>/view.action?seq=${boardvo.seq}"><span style="color: red; font-style: italic; padding-left: ${boardvo.depthno * 20}px;">┗Re</span>${boardvo.subject}</a>
					 </c:if>
	             </c:if>
	             
				 </td>
				<td>${boardvo.name}</td>
				<td align="center">${boardvo.regDate}</td>
				<td align="center">${boardvo.readCount}</td>
				
				
			</tr>
		</c:forEach>
	</table> --%>
	<br/>
	
	<!-- ===== #115. 페이지바 보여주기 ===== -->
	<div align="center" style="width: 400px; margin-left: 100px; margin-right: auto;">
		${pagebar}
	</div>
	<br/>
	
	
	
	<!-- ===== #146. Ajax 로 검색어 입력시 자동글 완성하기 1 ===== --> 
	<div id="displayList" style="width:302px; margin-left: 61px; border: solid 0px gray; border-top: 0px;">
	</div>   
	
	
	
	
</div>

</div>
                
     
     
       <!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="js/jquery.min.js"></script>        
        <!--bootstrap js plugin-->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>       
        <!--easing plugin for smooth scroll-->
        <script src="js/jquery.easing.1.3.min.js" type="text/javascript"></script>
        <!--sticky header-->
        <script type="text/javascript" src="js/jquery.sticky.js"></script>
        <!--flex slider plugin-->
        <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
        <!--parallax background plugin-->
        <script src="js/jquery.stellar.min.js" type="text/javascript"></script>
        
        
        <!--digit countdown plugin-->
        <script src="js/waypoints.min.js"></script>
        <!--digit countdown plugin-->
        <script src="js/jquery.counterup.min.js" type="text/javascript"></script>
        <!--on scroll animation-->
        <script src="js/wow.min.js" type="text/javascript"></script> 
        <!--owl carousel slider-->
        <script src="owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
        <!--popup js-->
        <script src="js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        
        
       
        
        <!--customizable plugin edit according to your needs-->
        <script src="js/custom.js" type="text/javascript"></script>
    </body>
</html>
                
                
                





</body>


