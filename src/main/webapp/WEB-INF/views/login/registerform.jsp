<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/BootStrapStudy/css/bootstrap.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-2.0.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/BootStrapStudy/js/bootstrap.js"></script>

<body>

	<div class="page-center">
		<div class="page-center-in">
			<form class="sign-box">
				<div class="sign-avatar">
					<img
						src="<%=request.getContextPath()%>/resources/assets/images/user-add.png"
						alt="" class="img-circle">
				</div>
				<header class="sign-title">Sign Up</header>
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
						type="text" class="form-control" placeholder="Nickname">
				</div>
				<br/>
				
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
					<input type="email" class="form-control" placeholder="example123@email.com">
				</div>
				<br/>
				
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
						type="password" class="form-control" placeholder="Password">
				</div>
				<br/>
				
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
						type="password" class="form-control" placeholder="Repeat Password">
				</div>
				<br/>
				
				<div class="form-group clearfix">
					<div class="checkbox pull-left">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
							id="myCheckbox" name="myCheckbox"> <label
							for="myCheckbox">Remember Me </label>
					</div>
				</div>
				
				<button type="submit" class="btn btn-success rounded btn-lg">Register</button>
				<br />
				<p>
					Already have an account? <a href="/main/login.action">Login</a>
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


</body>
</html>
