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

}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.notice {
	padding: 80px 0;
}

.page-title {
	margin-bottom: 60px;
}

.page-title h3 {
	font-size: 28px;
	color: #333333;
	font-weight: 400;
	text-align: center;
}

#board-search .search-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#board-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#board-search .search-window .search-wrap input {
	height: 40px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #ccc;
}

#board-search .search-window .search-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#board-search .search-window .search-wrap .btn {
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	font-size: 13px;
	width: 100%;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.board-table a {
	color: #333;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;
}

.board-table .th-num {
	width: 100px;
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {
	padding: 14px 0;
}

.board-table tbody td {
	border-top: 1px solid #e7e7e7;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #e7e7e7;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.btn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

/* reset */
* {
	list-style: none;
	text-decoration: none;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.container {
	width: 1100px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}
</style>

</head>
<body>
	<section class="notice">
		<div class="page-title" align="center">
			<div class="container">
			<img alt="" src="images/frog.png" width="8%" height="8%">
				<h1>자유게시판</h1>
			</div>
		</div>
		<!-- board seach area -->
		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form action="">
						<div class="search-wrap">
							<label for="search" class="blind">자유게시판 내용 검색</label> <input
								id="search" type="search" name="" placeholder="검색어를 입력해주세요."
								value="">
							<button type="submit" class="btn btn-dark">검색</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-date">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty freeBoards }">
							<td colspan="6">게시글이 존재하지 않습니다.</td>
						</c:if>
						<c:if test="${not empty freeBoards }">
							<c:forEach items="${freeBoards }" var="m">
								<tr onclick="selectFreeBoard(${m.freeBoardId})"
									onMouseover="this.style.backgroundColor='#E2E2E2';"
									onMouseout="this.style.backgroundColor='white';">
									<td>${m.freeBoardId }</td>

									<th><div align="center">
											<span class="d-inline-block text-truncate"
												style="max-width: 200px;"> ${m.freeBoardTitle }</span>
										</div></th>

									<td>${m.freeBoardDate }</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
				<br> <br>
				<div align="center">
					<form id="frm" action="freeBoardSelect.do" method="post">
						<input type="hidden" id="id" name="id">
						<c:if test="${not empty memberId}">
							<button type="button"
								onclick="location.href='freeBoardInsertForm.do'"
								class="btn btn-outline-dark">글쓰기</button>
						</c:if>
					</form>
					<br>
					<br>
					<div>
						<small><a href="freeBoard.do">◀ 1 2 3 4 5 ▶</a></small>
					</div>
				</div>
			</div>
			<div>
				<form id="fbf" name="fbf" method="post">
					<input type="hidden" id="freeBoardId" name="freeBoardId">
				</form>
			</div>
		</div>

	</section>
	<!-- 
	<hr>
	<div align="center" class="tableBack">
		<div>
			<h1>
				<small>자유게시판</small>
			</h1>
		</div>
		<br>
		<div class="container">
			<table class="member">
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>내용</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty freeBoards }">
						<td colspan="6">게시글이 존재하지 않습니다.</td>
					</c:if>
					<c:if test="${not empty freeBoards }">
						<c:forEach items="${freeBoards }" var="m">
							<tr onclick="selectFreeBoard(${m.freeBoardId})">
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
			<br>
			<div>
				<form
					class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
					<div class="input-group">
						<input class="form-control" type="text"
							placeholder="Search for..." aria-label="Search for..."
							aria-describedby="btnNavbarSearch" />
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
							class="btn btn-outline-dark">글쓰기</button>
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
						class="btn btn-outline-dark">글쓰기</button>
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
		 -->
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