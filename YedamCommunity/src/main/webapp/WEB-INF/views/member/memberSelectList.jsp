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
</head>
<body>
	<div align="center">
		<div>
			<br>
			<h1>멤버 전체 목록</h1>
			<br>
		</div>
		<div>
			<div class="container">
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>이메일</th>
							<th>주소</th>
							<th>생년월일</th>
							<th>가입날짜</th>
							<th>권한</th>
							<th width="90px">포인트</th>
						</tr>
					</thead>
					<c:forEach items="${members}" var="member">
						<tr onclick="selectMember('${member.memberId}')"
							onMouseover="this.style.backgroundColor='gray';"
							onMouseout="this.style.backgroundColor='white';">
							<td width="80px">${member.memberId}</td>
							<td>${member.memberName}</td>
							<td width="150px">${member.memberTel}</td>
							<td>${member.memberEmail}</td>
							<td width="180px">${member.memberAddress }</td>
							<td>${member.memberBirth }</td>
							<td>${member.memberCreateDate }</td>
							<td>${member.memberAuthor }</td>
							<td>${member.memberPoint }</td>
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
		</div>
	</div>
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