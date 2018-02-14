<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/BootStrapStudy/css/bootstrap.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/BootStrapStudy/js/bootstrap.js"></script>


<!--Common plugins-->
<script	src="<%=request.getContextPath()%>/resources/assets/plugins/jquery/dist/jquery.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/assets/plugins/hoe-nav/hoe.js"></script>
<script	src="<%=request.getContextPath()%>/resources/assets/plugins/pace/pace.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/assets/js/app.js"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

.input-group1{
	text-align: center;
}
</style>

<body>

	<div class="page-center">
		<div class="page-center-in">
			<form class="sign-box" name=userdetailFrm>

				<div class="sign-avatar">
					<a href="/main/adduserdetail.action"><img src="<%=request.getContextPath()%>/resources/assets/images/user-add.png" alt="" class="img-circle"></a>
				</div>

				<header class="sign-title">회원 정보</header>

				<div class="input-group">
					<span class="input-group-addon">회원no</span>					
				</div>

				<div class="input-group1">				
					<span>${sessionScope.loginuser.memberno}</span>
				</div>
				
				<c:if test="${sessionScope.loginuser2 != null}">
				<div class="input-group">
					<span class="input-group-addon">성명</span>					
				</div>

				<div class="input-group1">
					<span>${sessionScope.loginuser.name}</span>			
				</div>
				</c:if>

				<div class="input-group">
					<span class="input-group-addon">닉네임</span>					
				</div>
				
				<div class="input-group1">
					<span>${sessionScope.loginuser.nickname}</span>
				</div>

				<div class="input-group">
					<span class="input-group-addon">이메일</span>					
				</div>

				<div class="input-group1">
					<span>${sessionScope.loginuser.email}</span>			
				</div>

				<c:if test="${sessionScope.loginuser2 != null}">
				<div class="input-group">
					<span class="input-group-addon">연락처</span>					
				</div>

				<div class="input-group1">
					<span>${sessionScope.loginuser.tel}</span>			
				</div>
				
				<div class="input-group">
					<span class="input-group-addon">주소</span>					
				</div>

				<div class="input-group1">
					<span>${sessionScope.loginuser.address}</span>			
				</div>
				</c:if>


			</form>
		</div>
		<!--page center in-->
	</div>
	<!--page center-->
</body>
</html>
