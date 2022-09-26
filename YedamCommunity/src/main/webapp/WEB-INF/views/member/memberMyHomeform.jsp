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
	<table>
		<div>
			<form id="mtd" method="post">
				<thead>
					<tr>
						<th colspan="5">${member.memberName}님의마이페이지</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ID</td>
						<td colspan="4"><input type="text" id="memberId"
							name="memberId" value="${member.memberId}" readonly="readonly" /></td>

					</tr>
					<tr>
						<td>이름</td>
						<td colspan="4"><input type="text" id="memberName"
							name="memberName" value="${member.memberName}" /></td>

					</tr>
					<tr>
						<td>비밀번호</td>
						<td colspan="4"><input type="password" id="memberPw"
							name="memberPw" value="${member.memberPw}" /></td>

					</tr>

					<tr>
						<td>이메일</td>
						<td colspan="4"><input type="email" id="memberEmail"
							name="memberEmail" value="${member.memberEmail}" /></td>

					</tr>
					<tr>
						<td>연락처</td>
						<td colspan="4"><input type="text" id="memberTel"
							name="memberTel" value="${member.memberTel}" /></td>

					</tr>
					<tr>
						<td>주소</td>
						<td colspan="4"><input type="text" id="memberAddress"
							name="memberAddress" value="${member.memberAddress}" /></td>

					</tr>
					<tr>
						<td>생년월일</td>
						<td colspan="4"><input type="text" id="memberBirth"
							name="memberBirth" value="${member.memberBirth}" /></td>

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
						<td colspan="5"><input type="hidden" id="memberId"
							name="memberId" />
							<button type="button" onclick="actionForm('memberUpdate')">회원
								정보 수정</button> &nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" onclick="actionForm('memberPwUpdate')">회원
								비밀번호 변경</button> &nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" onclick="actionForm('memberDelete')">회원탈퇴</button>

						</td>
					</tr>
				</tbody>
			</form>
		</div>
	</table>

	<script type="text/javascript">
		function actionForm(str) {
			switch (str) {
			case 'memberUpdate':
				mtd.action = 'memberUpdate.do';
				break;
			case 'memberDelete':
				mtd.action = 'memberDelete.do';
				break;
			default:
				mtd.action = 'memberPwUpdate,do';
			}

			mtd.submit();
		}
	</script>
</body>
</html>