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

<style>
	.tableBack {
		background-image: url("css1/images/tableBack.jpg");
		background-position: right bottom;
	}
	.table-dark {
		text-align: center;
	}
	
</style>	


</head>

<body>
	<form id="mtd" method="post">
		<div class="tableBack">
			<div class="container" align="center">
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th colspan="5">${member.memberId}님의회원정보</th>
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
								<button type="button" class="btn btn-dark"
									onclick="location.href='memberSelectList.do'">회원목록</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</form>
	<br>
	<br>
	<br>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>
</body>
</html>