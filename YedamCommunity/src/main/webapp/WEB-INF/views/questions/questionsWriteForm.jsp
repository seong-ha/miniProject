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
	<br>
	<br>
	
	<div align="center"><h1>온라인 문의</h1></div>
	<br>
	
	<div>
		<form id="frm" action="questionsInsert.do" method="post" enctype="multipart/form-data"> <!-- 이진 바이너리도 있다는 걸 알려줌 -->
			<div align="center">
				<table border="1">
					<tr>
						<th width="150">작성자</th>
						<td width="200">
							<input type="text" id="memberId" name="memberId" value="${memberId }" readonly="readonly">
						</td>
					</tr>
	
					<tr>
						<th width="150">제목</th>
						<td colspan="3">
							<input type="text" id="questionsTitle" name="questionsTitle" required="required">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
							<textarea rows="10" cols="80" id="questionsContent" name="questionsContent"></textarea>
						</td>
					</tr>
					
		
				</table>
			
			</div><br>
			
			<div align="center">
				<input type="submit" value="등록">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소" onclick="location.href='questionsSelectList.do'">&nbsp;&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='questionsSelectList.do'">
			</div>
			
		
		</form>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
</body>
</html>