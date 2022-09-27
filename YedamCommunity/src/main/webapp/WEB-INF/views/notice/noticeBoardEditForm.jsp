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
		<div>
			<form id="frm" action="noticeBoardEdit.do" method="post"
				enctype="multipart/form-data">
				<div>
					<table border="1">
						<tr>
							<th>작성자</th>
							<td>${vo.noticeBoardWriter}</td>
							<th>작성일자</th>
							<td><input type="date" id="noticeBoardDate"
								name="noticeBoardDate" value="${vo.noticeBoardDate}"
								required="required"></td>
							<th>조회수</th>
							<td>${vo.noticeBoardHit}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="5"><input type="text" size="87"
								id="noticeBoardTitle" name="noticeBoardTitle"
								value="${vo.noticeBoardTitle}" required="required"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="5"><textArea rows="10" cols="88"
									id="noticeBoardSubject" name="noticeBoardSubject">${vo.noticeBoardSubject}</textArea>
							</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan="5"><input type="file" id="file" name="file"
								onchange="${vo.noticeBoardAttech}"></td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<input type="hidden" id="noticeBoardId" name="noticeBoardId"
						value="${vo.noticeBoardId}"> <input type="submit"
						value="수정">&nbsp;&nbsp; <input type="button"
						onclick="location.href='noticeBoard.do'" value="목록">
				</div>
			</form>
		</div>
	</div>
</body>
</html>