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
		<div><h1>글 수정 페이지</h1></div>
		
		<div>
			<form id="frm" action="freeBoardEdit.do" method="post" enctype="multipart/form-data">
				<div>
					<table border="1">
						<tr>
							<th>작성자</th>
							<td>
								${vo.memberId}
							</td>
							<th>조회수</th>
							<td>
								${vo.freeBoardHit}
							</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="5">
								<input type="text" size="87" id="freeBoardTitle" name="freeBoardTitle" value="${vo.freeBoardTitle}" required="required">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="5">
								<textArea rows="10" cols="88" id="freeBoardSubject" name="freeBoardSubject">${vo.freeBoardSubject}</textArea>
							</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan="5">
								<input type="file" id="ufile" name="ufile" onchange="${vo.freeBoardAttech}">
							</td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="hidden" id="freeBoardId" name="freeBoardId" value="${vo.freeBoardId}">
					<input type="submit" value="완료">&nbsp;&nbsp;
					<input type="button" onclick="location.href='freeBoard.do'"value="목록">
				</div><br>
			</form>
		</div>
		
	</div>
</body>
</html>