<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/memberMyHome.css" rel="stylesheet" type="text/css">
</head>
<body>
<body>
	<table>
		<div>
			
			
			<form id="mtd" method="post">
				<thead>
					<tr>
						
						<th colspan="5">${member.memberId}님의 회원정보</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ID</td>
						<td colspan="4">${member.memberId}</td>
						

					</tr>
					<tr>
						<td>이름</td>
						<td colspan="4">${member.memberName}</td>

					</tr>
					
					<tr>
						<td>이메일</td>
						<td colspan="4">${member.memberEmail}</td>

					</tr>
					<tr>
						<td>연락처</td>
						<td colspan="4">${member.memberTel}</td>

					</tr>
					<tr>
						<td>주소</td>
						<td colspan="4">${member.memberAddress}</td>

					</tr>
					<tr>
						<td>생년월일</td>
						<td colspan="4">${member.memberBirth}</td>

					</tr>
					<tr>
						<td>가입날짜</td>
						<td colspan="4">${member.memberCreateDate}</td>

					</tr>
					<tr>
						<td>권한</td>
						<td colspan="4">${member.memberAuthor}</td>

					</tr>
					<tr>
						<td>포인트</td>
						<td colspan="4">${member.memberPoint}</td>
					</tr>
					<tr>
						<td colspan="4">
							<button type="button" onclick="location.href='memberSelectList.do'">회원목록</button>
						</td>
					</tr>
					
				</tbody>
			</form>
		</div>
	</table>
</body>
</html>