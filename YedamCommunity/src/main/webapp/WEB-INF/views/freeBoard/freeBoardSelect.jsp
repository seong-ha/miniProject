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
		<h1>자유게시판 상세조회</h1>
		<div>
			<div>
				<table border="1">
					<tr>
						<th>글제목</th>
						<td><input type="text" id="freeBoardTitle"
							name="freeBoardTitle" value="${freeBoard.freeBoardTitle }"
							readonly="readonly"></td>
						<th>작성자</th>
						<td><input type="text" id="memberId" name="memberId"
							value="${freeBoard.memberId }" readonly="readonly"></td>
						<th>작성일</th>
						<td>${freeBoard.freeBoardDate }</td>
					</tr>
					<tr>
						<th>글내용</th>
						<td><textarea rows="10" cols="80" readonly="readonly">${freeBoard.freeBoardSubject }</textarea>
						</td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><input type="text" id="freeBoardAttech"
							name="freeBoardAttech" value="${freeBoard.freeBoardAttech }" readonly="readonly"></td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>${freeBoard.freeBoardHit }</td>
						<th>추천수</th>
						<td>${freeBoard.freeBoardLike }</td>
					</tr>
				</table>
			</div>
			<br>
			<div>
				<c:if test="${freeBoard.memberId eq memberId}">
					<button type="button" onclick="subCall('E')">수정</button>
					&nbsp;&nbsp;
					<button type="button" onclick="subCall('D')">삭제</button>
				</c:if>
				&nbsp;&nbsp;
				<button type="button" onclick="location.href='freeBoard.do'">목록</button>
			</div>
			<br>
			<div>
				<form id="fbs" method="post">
					<input type="hidden" id="deleteFreeBoardId"
						name="deleteFreeBoardId" value="${freeBoard.freeBoardId}">
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function subCall(str) {
			if (str == 'E') {
				fbs.action = "freeBoardEditForm.do"; // 수정
			} else if (str == 'D') {
				fbs.action = "freeBoardDelete.do"; // 삭제
			}
			fbs.submit();
		}
	</script>
</body>
</html>