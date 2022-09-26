<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<div>
			<h1>멤버 전체 목록</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>주소</th>
					<th>생년월일</th>
					<th>가입날짜</th>
					<th>권한</th>
					<th>포인트</th>
				</tr>
				<c:forEach items="${members}" var="member">
					<tr class="secondTr" onclick="selectMember('${member.memberId}')">
						<td>${member.memberId}</td>
						<td>${member.memberName}</td>
						<td>${member.memberTel}</td>
						<td>${member.memberEmail}</td>
						<td>${member.memberAddress }</td>
						<td>${member.memberBirth }</td>
						<td>${member.memberCreateDate }</td>
						<td>${member.memberAuthor }</td>
						<td>${member.memberPoint }</td>
					</tr>
				</c:forEach>
			</table>
		</div><br>
		
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
</body>
</html>