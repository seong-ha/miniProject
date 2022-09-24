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
			<form id="frm" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="150">글제목</th>
							<td width="200"><input type="text" id="freeBoardTitle"
								name="freeBoardTitle" value="${freeBoard.freeBoardTitle }"
								readonly="readonly"></td>
							<th>작성자</th>
							<td><input type="text" id="memberId"
								name="memberId" value="${freeBoard.memberId }"></td>
						</tr>
						<tr>
							<th>글내용</th>
							<td>
							<textarea rows="10" cols="80">${freeBoard.freeBoardSubject }</textarea>
								</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td><input type="text" id="freeBoardAttech" name="freeBoardAttech"
								value="${freeBoard.freeBoardAttech }"></td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<button type="button" onclick="actionForm('E')">수정</button>
					&nbsp;&nbsp;
					<button type="button" onclick="actionForm('D')">삭제</button>
					&nbsp;&nbsp;
					<button type="button" onclick="actionForm('L')">목록</button>
				</div><br>
			</form>
		</div>
	</div>
</body>
</html>