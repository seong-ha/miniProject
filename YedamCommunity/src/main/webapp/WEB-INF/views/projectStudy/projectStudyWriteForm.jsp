<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
<!-- multiSelect관련 css -->

<!-- Include Twitter Bootstrap and jQuery: -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />

<!-- Include the plugin's CSS and JS: -->
<link rel="stylesheet" href="css/bootstrap/bootstrap-multiselect.css"
	type="text/css" />
	
<!-- multiSelect관련 js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>

<style type="text/css">
select option[value=""][disabled] {
	display: none;
}
</style>

</head>
<body>

	<div id="allContainer"></div>

	<br>
	<br>
	<h3 class="center aligned header">Stackable Grid Container</h3>
	<div class="ui two column stackable grid container">
		<div class="column">
			<div>
				<h4>프로젝트 구분</h4>
			</div>
			<div class="ui segment">
				<select class="form-select form-select-lg">
					<option value="" disabled selected>프로젝트/스터디</option>
					<option>프로젝트</option>
					<option>스터디</option>
				</select>
			</div>
		</div>
		<div class="column">
			<div>
				<h4>모집 인원</h4>
			</div>
			<div class="ui segment">
				<select class="form-select form-select-lg">
					<option value="" disabled selected>인원 미정~10명 이상</option>
					<option>1명</option>
					<option>2명</option>
					<option>3명</option>
					<option>4명</option>
					<option>5명</option>
					<option>6명</option>
					<option>7명</option>
					<option>8명</option>
					<option>9명</option>
					<option>10명 이상</option>
				</select>
			</div>
		</div>
		<div class="column">
			<div>
				<h4>진행 방식</h4>
			</div>
			<div class="ui segment">
				<select class="form-select form-select-lg">
					<option value="" disabled selected>온라인/오프라인</option>
					<option>온라인</option>
					<option>오프라인</option>
				</select>
			</div>
		</div>
		<div class="column">
			<div>
				<h4>진행 기간</h4>
			</div>
			<div class="ui segment">
				<select class="form-select form-select-lg">
					<option value="" disabled selected>기간 미정~6개월 이상</option>
					<option>기간 미정</option>
					<option>1개월</option>
					<option>2개월</option>
					<option>3개월</option>
					<option>4개월</option>
					<option>5개월</option>
					<option>6개월</option>
					<option>장기</option>
				</select>
			</div>
		</div>
		<div class="column">
			<div>
				<h4>기술 스택 및 개발 언어</h4>
			</div>
			<div class="ui segment">
				<select class="form-select form-select-lg">
					<option value="" disabled selected>기술 스택/개발 언어</option>
					<option>Java</option>
					<option>JavaScript</option>
					<option>HTML/CSS</option>
					<option>Spring</option>
					<option>JavaScript</option>
					<option>OracleDB</option>
					<option>SQL</option>
					<option>Git</option>
				</select>
			</div>
		</div>
		<div class="column">
			<div>
				<h4>시작 예정일</h4>
			</div>
			<div class="ui segment">
				<select class="form-select form-select-lg">
					<option value="" disabled selected>프로젝트/스터디</option>
					<option>프로젝트</option>
					<option>스터디</option>
				</select>
			</div>
		</div>
		<div class="column">
			<div>
				<h4>프로젝트 구분</h4>
			</div>
			<div class="ui segment">
				<!-- Build your select: -->
			</div>
		</div>
	</div>
	<div class="ui text container">

		<h2 class="ui header">Header Groups</h2>

		<h4 class="ui top attached block header">Top Block Header</h4>
		<div class="ui bottom attached segment">Segment</div>

		<div class="ui section divider"></div>

		<div class="ui top attached segment">Segment</div>
		<h4 class="ui bottom attached block header">Bottom Block Header</h4>

		<div class="ui section divider"></div>

		<h4 class="ui top attached block header">Top Block Header</h4>
		<div class="ui attached segment">Segment</div>
		<h4 class="ui attached block header">Middle Block Header</h4>
		<div class="ui attached segment">Segment</div>
		<h4 class="ui bottom attached block header">Bottom Block Header</h4>
	</div>

	<br>
	<br>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous"></script>




	<script type="text/javascript">
	<!-- multiSelect - Initialize the plugin: -->
		$(document).ready(function() {
			$('#example-getting-started').multiselect();
		});
	</script>
</body>
</html>