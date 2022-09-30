<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" sizes="76x76"
	href="myPageCSS/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="myPageCSS/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="myPageCSS/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="myPageCSS/css/animate.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="myPageCSS/css/paper-dashboard.css" rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="myPageCSS/css/demo.css" rel="stylesheet" />

<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="myPageCSS/css/themify-icons.css" rel="stylesheet">
<title>Insert title here</title>



<style>
.tableBack {
	background-image: url("css1/images/tableBack.jpg");
	background-position: right bottom;
}

.table-dark {
	text-align: center;
}

.member {
	width: 900px;
	background-color: #fff;
	border-collapse: collapse;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
	border-radius: 5px;
	overflow: hidden;
}

.member caption {
	font-size: 20px;
	margin-bottom: 30px;
}

.member tr {
	border-bottom: 1px solid #eee;
}

.member tr:last-child {
	border: none;
}

.member tr:nth-child(odd) {
	background-color: #ddd;
}

.member th, .member td {
	padding: 12px;
	text-align: center;
}

.member tr th {
	background-color: black;
	color: #fff;
}

.member tr th:first-child {
	border-radius: 5px 0 0 0;
}

.member tr th:last-child {
	border-radius: 0 5px 0 0;
}

.member tr td:last-child {
	color: crimson;
	font-weight: 500;
}
</style>

</head>

<body>

	<div class="content">

		<div class="container-fluid">
			<div class="row">

				<form id="mtd" method="post">
					<div class="col-lg-4 col-md-5">
						<div class="card card-user">
							<div class="image">
								<img src="myPageCSS/img/background.jpg" alt="..." />
							</div>
							<div class="content">
								<div class="author">
									<img class="avatar border-white"
										src="myPageCSS/img/faces/face-2.jpg" alt="..." />
									<h4 class="title">${member.memberName}<br /> <a href="#"><small>@${member.memberName}</small></a>
									</h4>
								</div>
								<p class="description text-center">
									"I like the way you work it <br> No diggity <br> I
									wanna bag it up"
								</p>
							</div>
							<hr>
							<div class="text-center">
								<div class="row">
									<div class="col-md-3 col-md-offset-1">
										<h5>
											12<br /> <small>Files</small>
										</h5>
									</div>
									<div class="col-md-4">
										<h5>
											2GB<br /> <small>Used</small>
										</h5>
									</div>
									<div class="col-md-3">
										<h5>
											24,6$<br /> <small>Spent</small>
										</h5>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="header">
								<h4 class="title">Team Members</h4>
							</div>
							<div class="content">
								<ul class="list-unstyled team-members">




									<li>
										<div class="row">
											<div class="col-xs-3">
												<div class="avatar">
													<img src="myPageCSS/img/faces/face-0.jpg"
														alt="Circle Image"
														class="img-circle img-no-padding img-responsive">
												</div>
											</div>
											<div class="col-xs-6">
												DJ Khaled <br /> <span class="text-muted"><small>Offline</small></span>
											</div>

											<div class="col-xs-3 text-right">
												<btn class="btn btn-sm btn-success btn-icon"> <i
													class="fa fa-envelope"></i></btn>
											</div>
										</div>
									</li>
									<li>
										<div class="row">
											<div class="col-xs-3">
												<div class="avatar">
													<img src="myPageCSS/img/faces/face-1.jpg"
														alt="Circle Image"
														class="img-circle img-no-padding img-responsive">
												</div>
											</div>
											<div class="col-xs-6">
												Creative Tim <br /> <span class="text-success"><small>Available</small></span>
											</div>

											<div class="col-xs-3 text-right">
												<btn class="btn btn-sm btn-success btn-icon"> <i
													class="fa fa-envelope"></i></btn>
											</div>
										</div>
									</li>
									<li>
										<div class="row">
											<div class="col-xs-3">
												<div class="avatar">
													<img src="myPageCSS/img/faces/face-3.jpg"
														alt="Circle Image"
														class="img-circle img-no-padding img-responsive">
												</div>
											</div>
											<div class="col-xs-6">
												Flume <br /> <span class="text-danger"><small>Busy</small></span>
											</div>

											<div class="col-xs-3 text-right">
												<btn class="btn btn-sm btn-success btn-icon"> <i
													class="fa fa-envelope"></i></btn>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-8 col-md-7">
						<div class="card">
							<div class="header">
								<h4 class="title">Edit Profile</h4>
							</div>
							<div class="content">
								<form>
									<div class="row">
										<div class="col-md-5">
											<div class="form-group">
												<label>회사</label> <input type="text"
													class="form-control border-input" disabled
													placeholder="Company" value="예담">
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>아이디</label> <input type="text"
													class="form-control border-input" placeholder="아이디를 입력해주세요"
													id="memberId" name="memberId" value="${member.memberId}"
													readonly="readonly">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label for="exampleInputEmail1">비밀번호</label> <input
													type="password" class="form-control border-input"
													id="memberPw" name="memberPw" placeholder="비밀번호를 입력해주세요"
													value="${member.memberPw}">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>이름</label> <input type="text"
													class="form-control border-input" id="memberName"
													name="memberName" placeholder="이름을 입력해주세요"
													value="${member.memberName}">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>연락처</label> <input type="text"
													class="form-control border-input" id="memberTel"
													name="memberTel" placeholder="전화번호를 입력해주세요"
													value="${member.memberTel}">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>주소</label> <input type="text" id="memberAddress"
													name="memberAddress" class="form-control border-input"
													placeholder="주소를 입력해주세요" value="${member.memberAddress}">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<label>생년월일</label> <input type="date" id="memberBirth"
													name="memberBirth" class="form-control border-input"
													placeholder="생년월일을 입력하세요" value="${member.memberBirth}">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>가입날짜</label> <input type="text"
													class="form-control border-input" placeholder="가입날짜"
													value="${member.memberCreateDate}" readonly="readonly">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>권한</label> <input type="text"
													class="form-control border-input" placeholder="권한"
													value="${member.memberAuthor}" readonly="readonly">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>About Me</label>
												<textarea rows="5" class="form-control border-input"
													placeholder="Here can be your description" value="Mike">Oh so, your weak rhyme
You doubt I'll bother, reading into it
I'll probably won't, left to my own devices
But that's the difference in our opinions.</textarea>
												<br> <br>
												<div align="center">
													<tr>
														<td colspan="5"><input type="hidden" id="memberId"
															name="memberId" />
															<button type="button" class="btn btn-outline-dark"
																onclick="actionForm('memberUpdate')">회원 정보 수정</button>
															&nbsp;&nbsp;&nbsp;&nbsp;
															<button type="button" class="btn btn-outline-dark"
																onclick="actionForm('memberDelete')">회원탈퇴</button></td>
													</tr>
												</div>
											</div>
										</div>
									</div>

									<div class="clearfix"></div>
								</form>
							</div>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<script type="text/javascript">
		function actionForm(str) {
			switch (str) {
			case 'memberUpdate':
				alert('회원수정이 완료 되었습니다!')
				mtd.action = 'memberUpdate.do';
				break;
			case 'memberDelete':
				mtd.action = 'memberDelete.do';
				break;

			}

			mtd.submit();
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>
	<!--   Core JS Files   -->
	<script src="myPageCSS/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="myPageCSS/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="myPageCSS/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="myPageCSS/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="myPageCSS/js/bootstrap-notify.js"></script>

	<!--  Google Maps Plugin    -->
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js"></script>

	<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="myPageCSS/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="myPageCSS/js/demo.js"></script>


</body>
</html>