<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 검색 결과</title>
</head>
<body>


	<div class="outer">
		<div class="wrap">
			<div class="freeBoard_area">
				<div class="freeBoard_title">
					<h1>자유게시판 검색 결과</h1>
				</div>
				<div class="freeBoard_title">
					<c:forEach var="list" items="${ freeBoards }">
						<ul class="freeBoard_ul" onclick="freeBoardSelect(${freeBoards.memberId});">
							<li class="no">${ freeBoards.freeBoardId }</li>
							<li class="title">${ freeBoards.freeBoardTitle }</li>
							<li class="date">${ freeBoards.freeBoardDate }</li>
						</ul>
					</c:forEach>
				</div>
			</div>
			
		</div>
	</div>
	<script>
		function freeBoardSelect(mem){
			location.href = '${contextPath}/freeBoard/detail?nno=' + nno;
		}
	
	</script>



</body>
</html>