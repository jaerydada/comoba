<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/BootStrapStudy/css/bootstrap.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-2.0.0.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/BootStrapStudy/js/bootstrap.js"></script>
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
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
					<input type="email" class="form-control"
						placeholder="example123@email.com">
				</div>
				<br />

				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
						type="password" class="form-control" placeholder="Password">
				</div>
				<br />

				<div class="form-group clearfix">
					<div class="checkbox pull-left">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
							id="myCheckbox" name="myCheckbox"> <label
							for="myCheckbox">Remember Me!!</label>
					</div>
					<div class="pull-right">
						<p>
							<a href="#">Reset Password</a>
						</p>
					</div>
				</div>

				<button type="submit" class="btn btn-success rounded btn-lg">Sign in</button>
				<br/>
				<br/>
				<a href="#" class="btn btn-fb-login"><i class="fa fa-facebook"></i> Login With Facebook</a>

				<p>
					Don't have an account? <a href="/main/register.action">Sign up</a>
				</p>
			</form>
		</div>
		<!--page center in-->
	</div>
	<!--page center-->
</body>
</html>