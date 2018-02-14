<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   
<style type="text/css">
	table, th, td, input, textarea {border: solid gray 1px;}
	
	#table {border-collapse: collapse;
	 		width: 600px;
	 		}
	#table th, #table td{padding: 5px;}
	#table th{width: 120px; background-color: #DDDDDD;}
	#table td{width: 480px;}
	.long {width: 470px;}
	.short {width: 120px;} 	
	
	a{text-decoration: none;}	

</style>

<script type="text/javascript">
	function goUpdate() {
		// 유효성 검사 생략
		var editFrm = document.editFrm;
		editFrm.action = "/main/ourroom/editEnd.action";
		editFrm.method = "post";
		editFrm.submit();
	}
</script>

<div style="padding-left: 10%; border: solid 0px red;">
	<h1>글수정</h1>
	
	<form name="editFrm">     
		<table id="table">
			<tr>
				<th>글번호</th>
				<td>${boardvo.board_no}
					<input type="hidden" name="board_no" value="${boardvo.board_no}" />
				</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${boardvo.nickname}</td>
			</tr>
			<tr>
	           	<th>제목</th>
	           	<td><input type="text" name="subject" value="${boardvo.subject}" style="width: 300px;" /></td>
	        	</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" class="long" style="height: 200px;">${boardvo.content}</textarea></td>
			</tr>
		
		</table>
		
		<br/>
		<button type="button" onClick="goUpdate();">완료</button>
		<button type="button" onClick="javascript:history.back();">취소</button>
	
	</form>	
		
</div>











