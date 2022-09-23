<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<hr>
		<br>
		<div align="center">
		<h1>자유게시판 작성</h1>
		</div>
		<div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">글제목</label> <input type="email" class="form-control"
					id="exampleFormControlInput1" placeholder="글제목을 입력하세요.">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">글내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="12" placeholder="글내용을 입력하세요."></textarea>
			</div>
		</div>
		<div class="input-group mb-3">
			<input type="file" class="form-control" id="inputGroupFile02">
			<label class="input-group-text" for="inputGroupFile02">Upload</label>
		</div>
		<br>
		<button class="btn btn-primary me-md-2" type="button"
			onclick="location.href='freeBoardInsertPage.do'">등록</button>
		&nbsp;&nbsp;
		<button class="btn btn-primary" type="button"
			onclick="freeBoardInsertPage.do'">취소</button>
		<br> <br> <br>
	</div>
</body>
</html>