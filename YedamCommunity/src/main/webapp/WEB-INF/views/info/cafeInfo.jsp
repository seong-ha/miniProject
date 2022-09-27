<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/info.css">
<title>스터디카페 리스트</title>
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
	<h2>오늘은 어디서 공부하지?</h2>
	<br>
	<br>
	<div class="container">
		<div class="main-content">
			<article class="component">
				<img src="images/cafe-1.jpg" alt="이미지">
				<div class="description">
					<h3>YMCA 무인카페</h3>
					<p>#가성비#조용#스터디#9시영업끝</p>
					<p class="here">세부내용</p>
					<a href="https://map.naver.com/v5/entry/place/1433526634?c=14314100.0462919,4282833.7170042,15,0,0,0,dh" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/cafe-2.jpg" alt="이미지">
				<div class="description">
					<h3>북스터디카페391</h3>
					<p>#24시간 #노트북가능 #반월당역</p>
					<p class="here">세부내용</p>
					<a href="https://map.naver.com/v5/search/%EC%A4%91%EC%95%99%EB%A1%9C%20%EC%8A%A4%ED%84%B0%EB%94%94%EC%B9%B4%ED%8E%98/place/1460807630?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14313975.3350664,4282466.4415839,15,0,0,0,dh" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/cafe-3.jpg" alt="이미지">
				<div class="description">
					<h3>스텝업</h3>
					<p> #카페같은#갬성#야외휴식공간</p>
					<p class="here">세부내용</p>
					<a href="https://map.naver.com/v5/search/%EC%A4%91%EC%95%99%EB%A1%9C%20%EC%8A%A4%ED%84%B0%EB%94%94%EC%B9%B4%ED%8E%98/place/1164922126?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14313709.3482751,4282553.5337517,15,0,0,0,dh" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/cafe-4.jpg" alt="이미지">
				<div class="description">
					<h3>공간</h3>
					<p> #스터디룸#여러개#24시간</p>
					<p class="here">세부내용</p>
					<a href="https://map.naver.com/v5/search/%EC%A4%91%EC%95%99%EB%A1%9C%20%EC%8A%A4%ED%84%B0%EB%94%94%EC%B9%B4%ED%8E%98/place/1060935854?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14314120.8185089,4282288.0559215,15,0,0,0,dh" class="button">더보기</a>
				</div>
			</article>
		
			<article class="component">
				<img src="images/cafe-5.jpg" alt="이미지">
				<div class="description">
					<h3> 고바슨 반달스퀘어점</h3>
					<p>#6인테이블#반월당역#샌드위치</p>
					<p class="here">세부내용</p>
					<a href="https://map.naver.com/v5/search/%EA%B3%A0%EB%B0%94%EC%8A%A8/place/1985668136?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14313979.7878460,4282222.0652313,15,0,0,0,dh" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/cafe-6.jpg" alt="이미지">
				<div class="description">
					<h3>투썸 동성로광장점</h3>
					<p>#단체스터디#사람많아</p>
					<p class="here">세부내용</p>
					<a href="https://map.naver.com/v5/entry/place/37202522?c=14313213.8206938,4282282.4101578,13,0,0,0,dh&placePath=%2Fhome&entry=plt" class="button">더보기</a>
				</div>
			</article>
		
		
		
			


				
		</div>

<br>
<br>
	</div>


</body>
</html>