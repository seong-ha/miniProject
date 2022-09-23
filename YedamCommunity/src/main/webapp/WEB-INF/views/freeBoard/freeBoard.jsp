<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
</head>
<body>
	<hr><br>
	<div align="center">
		<div>
			<h1>자유게시판</h1>
		</div>
		<div>
			<table class="table">
				<thead class="table-dark">
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>내용</th>
						<th>작성자ID</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>추천수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${freeBoards }" var="m">
						<tr onMouseover="this.style.backgroundColor='yellow';"
							onMouseout="this.style.backgroundColor='white';" onclick="#">
							<td>${m.freeBoardId }</td>
							<td>${m.freeBoardTitle }</td>
							<td>${m.freeBoardSubject }</td>
							<td>${m.memberId }</td>
							<td>${m.freeBoardDate }</td>
							<td>${m.freeBoardHit }</td>
							<td>${m.freeBoardLike }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<br>
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button class="btn btn-primary me-md-2" type="button" onclick="location.href='freeBoardInsertPage.do'">글쓰기</button>
			<!-- <button class="btn btn-primary" type="button">돌아가기</button> -->
		</div>
		<br>
		<p>1 2 3 4 5</p>
	</div>
</body>
</html>