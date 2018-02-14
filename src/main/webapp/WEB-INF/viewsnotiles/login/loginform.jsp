<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html >
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/BootStrapStudy/css/bootstrap.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-2.0.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/BootStrapStudy/js/bootstrap.js"></script>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link
	href="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--side menu plugin-->
<link
	href="<%=request.getContextPath()%>/resources/assets/plugins/hoe-nav/hoe.css"
	rel="stylesheet">
<!-- icons-->
<link
	href="<%=request.getContextPath()%>/resources/assets/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/assets/plugins/iCheck/custom.css"
	rel="stylesheet">
<!--template custom css file-->
<link
	href="<%=request.getContextPath()%>/resources/assets/css/style.css"
	rel="stylesheet">

<script
	src="<%=request.getContextPath()%>/resources/assets/js/modernizr.js"></script>

</head>
<body>

	<div class="page-center">
		<div class="page-center-in">
			<form class="sign-box">
				<div class="sign-avatar">
					<img
						src="<%=request.getContextPath()%>/resources/assets/images/avtar.png"
						alt="" class="img-circle">
				</div>
				<header class="sign-title">Sign In</header>
				<div class="form-group">
					<input type="text" class="form-control"
						placeholder="E-Mail or Phone">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="Password">
				</div>
				<div class="form-group clearfix">
					<div class="checkbox pull-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="myCheckbox" name="myCheckbox"
							class="i-checks"> <label for="myCheckbox">Remember
							Me </label>
					</div>
					<div class="pull-right">
						<p>
							<a href="#">Reset Password</a>
						</p>
					</div>
				</div>
				<button type="submit" class="btn btn-success rounded btn-lg">Sign
					in</button>
				<hr>
				<p>
					Don't have an account? <a href="/main/register.action">Sign up</a>
				</p>
			</form>
		</div>
		<!--page center in-->
	</div>
	<!--page center-->

	<!--Common plugins-->
	<script
		src="<%=request.getContextPath()%>/resources/assets/plugins/jquery/dist/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/assets/plugins/hoe-nav/hoe.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/assets/plugins/pace/pace.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/app.js"></script>
	<!-- iCheck -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_flat-blue',
				radioClass : 'icheckbox_flat-blue'
			});
		});
	</script>
</body>
</html>
