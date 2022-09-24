
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판 목록</title>
</head>
<body>

	<!-- 배너 -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_5.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate mb-0 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="main.do">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>문의사항 <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h1 class="mb-0 bread">Q&A</h1>
				</div>
			</div>
		</div>
	</section>


	<br>
	<br>
	<br>


	<!-- <div align="center"><h1>Q&A</h1></div> -->
	<div align="center">

		<br> <br> <br>
		<table>
			<thead>
				<tr align="center">
					<th width="70">NO</th>
					<th width="250">제목</th>
					<th width="150">작성자</th>
					<th width="150">작성일자</th>

				</tr>
			</thead>


			<tbody>
				<c:if test="${empty list }">
					<tr>
						<td colspan="4">게시글이 존재하지 않습니다.</td>
					</tr>
				</c:if>
				<c:if test="${not empty list }">
					<c:forEach items="${list }" var="n">
						<tr onMouseover="this.style.backgroundColor='grey'"
							onMouseout="this.style.backgroundColor='white'"
							onclick="selectQuestions('${n.questionsId}')">
							<td align="center">${n.questionsNum }</td>
							<td align="center">${n.questionsTitle }</td>
							<td align="center">${n.questionsContent }</td>
							<td align="center">${n.questionsWriter }</td>
							<td align="center">${n.questionsDate }</td>

						</tr>
					</c:forEach>
				</c:if>
			</tbody>

		</table>

	</div>
	<br>
	<div align="center">
		<form id="frm" method="post" action="questionsSelect.do">
			<input type="hidden" id="id" name="id">
			
			<div class="container">
				<div class="row">
					<form method="post" name="search" action="searchQuestions.do">
						<table class="pull-right">
							<tr>
								<td>
								<form name="searchList" method="post" acthion="questionsSearchList.do">
								<select class="form-control" name="keyField">
										<option value="0">선택</option>
										<option value="questionsTitle">제목</option>
										<option value="memberId">작성자</option>
								</select></td>
								<td><input type="text" class="form-control"
									placeholder="검색어 입력" name="keyWord" maxlength="100"></td>
								<td><button type="submit" class="btn btn-success">검색</button>
							</form></td></tr>

						</table>
					</form>
				<c:if test="${not empty id }">
					<!-- 접근제어 -->
					<button type="button"
						onclick="location.href='questionsWriteForm.do'">글쓰기</button>
				</c:if>
	
				
				</div>
			</div>
		
	</div>
	<br>
	<br>
	<script type="text/javascript">
		function selectQuestions(id) {
			document.getElementById("id").value = id;
			frm.submit();
		}
	</script>

</body>
</html>