<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/info.css">
<title>맛집 게시판</title>
</head>
<body>
	<!-- 상단 메뉴바 -->
	<!-- 클릭하면 계속 div가 색깔 바껴있기(추가) -->
	<header>
		<nav>
			<div align="center">
				<a href="infoFood.do">맛집 리스트</a>
			</div>
			<div align="center">
				<a href="infoCafe.do">스터디 카페 리스트</a>
			</div>
		</nav>
	</header>
	<br>
	<br>
	<!-- main contents : 카드 형식-->
	<h2>오늘은 뭐 먹지?</h2>
	<br>
	<br>
	<div align="right">
				<!-- 접근제어 -->
			<!--<c:if test="${vo.memberAuthor eq 'ADMIN'}">-->
				<button type="button"
					onclick="location.href='foodInfoWriteForm.do'">글쓰기</button>
			<!--</c:if>-->
	</div>
	<br>
	
	<c:if test="${not empty list }">
		<c:forEach items="${list }" var="n">
	<div class="container">
		<div class="main-content">
			<article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>${n.infoName}</h3>
					<p>${n.infoTag }</p>
					<p class="here">세부내용</p>
					<a href="foodInfoSelect.do" class="button">더보기</a>
				</div>
			</article>
			
			</div>
			</div>
			</c:forEach>
			</c:if>
			
			
			<!--  <article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>신라식당</h3>
					<p>#낙지볶음 #웨이팅 #한식</p>
					<p class="here">세부내용</p>
					<a href="food2.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>만복식당</h3>
					<p>#매일다른메뉴 #한식</p>
					<p class="here">세부내용</p>
					<a href="food3.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>제주곤이칼국수</h3>
					<p>#고기국수 #제주 #한식</p>
					<p class="here">세부내용</p>
					<a href="food4.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>개미집 동성로점</h3>
					<p>#매콤한 #낙곱새</p>
					<p class="here">세부내용</p>
					<a href="food5.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>포꼬</h3>
					<p>#베트남 #반쎄오존맛</p>
					<p class="here">세부내용</p>
					<a href="food6.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>마차이짬뽕</h3>
					<p>#짬뽕 #도라방스</p>
					<p class="here">세부내용</p>
					<a href="food7.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>가게 이름</h3>
					<p>내용 입력</p>
					<p class="here">세부내용</p>
					<a href="#" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="" alt="">
				<div class="description">
					<h3>가게 이름</h3>
					<p>내용 입력</p>
					<p class="here">세부내용</p>
					<a href="#" class="button">더보기</a>
				</div>
			</article>

		</div>
		
		<br>
		<br>
		
		<br>
		<br>
		

	</div>-->


</body>
</html>