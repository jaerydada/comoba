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

<style>
.circle {
	width: 170px;
	height: 170px;
	display: inline-block;
	vertical-align: middle;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	background-color: darkyellow;
}

.circle1 {
	width: 170px;
	height: 170px;
	display: inline-block;
	vertical-align: middle;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	background-color: pink;
}

.circle2 {
	width: 170px;
	height: 170px;
	display: inline-block;
	vertical-align: middle;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	background-color: grey;
}
</style>

<body>
	<div class="container" align="center">
		<div class="row">
		
			<div>
				<a href="#"><span class="label-primary circle"></span></a>
				<a href="#"><span class="label-primary circle1"></span></a>
				<a href="#"><span class="label-primary circle2"></span></a>
			</div>

			<div class="space-20"></div>

			<div class="ui-buttons">
				<button type="button" class="btn-lg">D-DAY</button>
				<button type="button" class="btn-lg">출석 현황</button>
				<button type="button" class="btn-lg">미션 현황</button>
			</div>

			<div class="divide60"></div>

			<div class="ui-buttons" align="center">
				<button type="button" class="btn btn-primary rounded">Follower</button>
			</div>

			<div class="space-20"></div>


			<div class="col-md-6">
				<div class="panel">
					<header class="panel-heading">
						<h2 class="panel-title">출석율 랭킹</h2>
					</header>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Name</th>
									<th>Value</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>태봉</td>
									<td>98%</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>승모</td>
									<td>98%</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>송희</td>
									<td>98%</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!--col end-->

			<div class="col-md-6">
				<div class="panel">
					<header class="panel-heading">
						<h2 class="panel-title">미션 달성율 랭킹</h2>
					</header>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Name</th>
									<th>Value</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>태봉</td>
									<td>98%</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>승모</td>
									<td>98%</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>송희</td>
									<td>98%</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!--col end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>