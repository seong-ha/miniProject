<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr>
		<br>
		<div>
			<h1>자유게시판 작성</h1>
		</div>
		<form id="freeBoardInsertForm" action="freeBoardInsert.do"
			method="post" enctype="multipart/form-data">

			<table border="1">
				<tr>
					<th width="100">작성자</th>
					<td>
						<!-- 로그인한 사용자 이름을 value에 박아서 required 필요 없음. --> <input
						type="text" id="memberId" name="memberId" value="${id}"
						readonly="readonly">
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" size="87" id="freeBoardTitle"
						name="freeBoardTitle" required="required"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3"><textArea rows="10" cols="88"
							id="noticeSufreeBoardSubjectbject" name="freeBoardSubject"></textArea></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td colspan="3"><input type="file" id="ufile" name="ufile">
					</td>
				</tr>
			</table>

			<br>&nbsp;&nbsp;
			<div>
				<input type="submit" value="등록">&nbsp;&nbsp;&nbsp; <input
					type="reset" value="초기화">&nbsp;&nbsp;&nbsp; <input
					type="button" value="목록"
					onclick="location.href='freeBoard.do'">&nbsp;&nbsp;&nbsp;
			</div>
			<br>
			<br>
		</form>
	</div>
</body>
</html>