<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/BootStrapStudy/css/bootstrap.css">
  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-2.0.0.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/BootStrapStudy/js/bootstrap.js"></script>
  
  
<script type="text/javascript">
<c:if test="${n == 1 }">
	alert("로그인 성공 !!");
location.href="<%= request.getContextPath() %>/intro.action";       
</c:if>
<%-- 
<c:if test="${n == 1  && empty url}">
	alert("로그인 성공 !!");
location.href="<%= request.getContextPath() %>/index.action";       
</c:if> 

		<c:if test="${n == 1 && not empty url}">
			alert("로그인 성공 !!");
			location.href="${url}";       
		</c:if>
		   --%>

		    
		   
		<c:if test="${n == 0}">
			alert("암호가 틀립니다 !!");
			javascript:history.back();
			// 이전 페이지로 이동
			// 왜 안되냐?
		</c:if>
			
		<c:if test="${n == -1}">
			alert("회원가입 부터 먼저 하세요 !!");
			javascript:history.back();
			// 이전 페이지로 이동
	</c:if>	
</script>
    