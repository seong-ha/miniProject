<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>

<style>
.tableBack {
	background-image: url("css1/images/tableBack.jpg");
}
</style>

</head>
<body>
	<hr>
	<div align="center" class="tableBack">
		<div>
			<h1>자유게시판</h1>
		</div>
		<br>
		<div class="container">
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
					<c:if test="${empty freeBoards }">
						<td colspan="6">게시글이 존재하지 않습니다.</td>
					</c:if>
					<c:if test="${not empty freeBoards }">
						<c:forEach items="${freeBoards }" var="m">
							<tr onMouseover="this.style.backgroundColor='gray';"
								onMouseout="this.style.backgroundColor='white';"
								onclick="selectFreeBoard(${m.freeBoardId})">
								<td>${m.freeBoardId }</td>
								<td><span class="d-inline-block text-truncate"
									style="max-width: 200px;"> ${m.freeBoardTitle }</span></td>
								<td><span class="d-inline-block text-truncate"
									style="max-width: 350px;"> ${m.freeBoardSubject }</span></td>
								<td>${m.memberId }</td>
								<td>${m.freeBoardDate }</td>
								<td>${m.freeBoardHit }</td>
								<td>${m.freeBoardLike }</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
		<br>
		<div>
			<form
				class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
				<div class="input-group">
					<input class="form-control" type="text" placeholder="Search for..."
						aria-label="Search for..." aria-describedby="btnNavbarSearch" />
					<button class="btn btn-black" id="btnNavbarSearch" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</form>
			&nbsp;&nbsp;
		</div>
		<br>
		<div align="center">
			<form id="frm" action="freeBoardSelect.do" method="post">
				<input type="hidden" id="id" name="id">
				<c:if test="${not empty memberId}">
					<button type="button"
						onclick="location.href='freeBoardInsertForm.do'"
						class="btn btn-dark">글쓰기</button>
				</c:if>
			</form>
			<br>
		</div>

		<div>

			<div>
				<ul>
					<li><a href="freeBoard.do">◀</a>&nbsp; <a href="freeBoard.do">1</a>&nbsp;
						<a href="freeBoard.do">2</a>&nbsp; <a href="freeBoard.do">3</a>&nbsp;
						<a href="freeBoard.do">4</a>&nbsp; <a href="freeBoard.do">5</a>&nbsp;
						<a href="freeBoard.do">▶</a></li>
				</ul>
			</div>
		</div>
		<div>
			<form id="fbf" name="fbf" method="post">
				<input type="hidden" id="freeBoardId" name="freeBoardId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function selectFreeBoard(id) {
		document.getElementById("freeBoardId").value = id;
		fbf.action = "freeBoardSelect.do";
		fbf.submit();
	}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>

</body>
</html>