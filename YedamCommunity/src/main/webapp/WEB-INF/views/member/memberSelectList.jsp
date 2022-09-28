<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style>
	
	.tableBack {
		background-image: url("css1/images/tableBack.jpg");
	
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
	background-color: #FD5F00;
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
	<div align="center" class="tableBack">
		<div>
			<hr><br>
			<h1>멤버 전체 목록 (자세히 보기는 클릭!)</h1>
			<br>
		</div>
		<div>
			<div class="container">
				<table class="member">
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>이메일</th>
							<th>주소</th>
							<th>생년월일</th>
							
						</tr>
					</thead>
					<c:forEach items="${members}" var="member">
						<tr onclick="selectMember('${member.memberId}')">
							<td width="80px">${member.memberId}</td>
							<td>${member.memberName}</td>
							<td width="150px">${member.memberTel}</td>
							<td>${member.memberEmail}</td>
							<td width="250px">${member.memberAddress }</td>
							<td>${member.memberBirth }</td>
							
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<br>

		<div>
			<form id="msl" method="post">
				<input type="hidden" id="memberId" name="memberId">
			</form>
		</div><br><br>
					<div>
				<ul>
					<li><a href="freeBoard.do">◀</a>&nbsp; <a href="freeBoard.do">1</a>&nbsp;
						<a href="freeBoard.do">2</a>&nbsp; <a href="freeBoard.do">3</a>&nbsp;
						<a href="freeBoard.do">4</a>&nbsp; <a href="freeBoard.do">5</a>&nbsp;
						<a href="freeBoard.do">▶</a></li>
				</ul>
			</div>
	</div><br>
	<script type="text/javascript">
		function selectMember(id) {
			document.getElementById('memberId').value = id
			msl.action = "memberSelect.do";
			msl.submit();
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>
</body>
</html>