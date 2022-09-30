<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Template Mo">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Education - List of Meetings</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="headercss/css/fontawesome.css">
    <link rel="stylesheet" href="headercss/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="headercss/css/owl.css">
    <link rel="stylesheet" href="headercss/css/lightbox.css">

<!-- <meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/style.css">
<link href="css1/css/memberLogin2.css" rel="stylesheet" type="text/css">
버튼 때문에 위에 스타일 적용해 놓음 다른 css와 얽힐까바
<style type="text/css">
.buttons {
    margin: 10%;
    text-align: center;
}

.btn-hover {
    width: 140px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}

.btn-hover.color-1 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}
.btn-hover.color-2 {
    background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
    box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
}
</style> -->
</head>

 <body>
  <!-- Sub Header -->
  <div class="sub-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-sm-8">
          <div class="left-content">
            <p>This is an educational <em>HTML CSS</em> template by TemplateMo website.</p>
          </div>
        </div>
        <div class="col-lg-4 col-sm-4">
          <div class="right-icons">
            <ul>
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-behance"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="index.html" class="logo">
                          Yedam community
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="index.html">Home</a></li>
                          <li><a href="meetings.html" >공지사항</a></li>
                          <li><a href="index.html">자유 게시판</a></li>
                          <li class="has-sub">
                              <a href="javascript:void(0)">Pages</a>
                              <ul class="sub-menu">
                                  <li><a href="meetings.html">Upcoming Meetings</a></li>
                                  <li><a href="meeting-details.html">Meeting Details</a></li>
                              </ul>
                          </li>
                          <li><a href="index.html">문의사항</a></li> 
                          <li><a href="index.html">로그인&회원가입</a></li> 
                      </ul>        
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
 
 
<%--	<div>
		<div class="container-fluid px-md-5  pt-4 pt-md-5">
			<div class="row justify-content-between">
				<div class="col-md-8 order-md-last">
					<div class="row">
						<div class="col-md-6 text-center">
							<a class="navbar-brand" href="main.do"><span>YEDAM </span>Community
								<small>IT직업전문학교</small></a>
						</div>
						<div class="col-md-6 d-md-flex justify-content-end mb-md-0 mb-3">
							<form id="frm" action="memberLoginForm.do" method="post">
								<div class="btn-group" role="group" aria-label="Basic example">
									<c:choose>
										<c:when test="${empty memberId }">
											<button type="submit" class="btn-hover color-2">로그인&회원가입</button>
										</c:when>
										<c:otherwise>
											<h5>${memberName }님 환영합니다</h5> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<button type="button" class="btn-hover color-2"
												onclick="location.href='memberLogout.do'">로그아웃</button>
											<c:if test="${memberAuthor eq 'USER' }">
												<button type="button" class="btn-hover color-2"
												onclick="location.href='memberMyHome.do'">마이페이지</button>
											</c:if>
											<c:if test="${memberAuthor eq 'ADMIN' }">
												<button type="button" class="btn-hover color-2"
												onclick="location.href='memberSelectList.do'">회원정보조회</button>
											</c:if>
						
										</c:otherwise>
									</c:choose>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex">
					<div class="social-media">
						<p class="mb-0 d-flex">
							<a href="#"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a> <a
								href="https://yedam.step.or.kr/main.do"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a> <a
								href="#"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
							<a href="#"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<nav
			class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
			id="ftco-navbar">
			<div class="container-fluid">

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#ftco-nav" aria-controls="ftco-nav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="fa fa-bars"></span> Menu
				</button>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav m-auto">
						<li class="nav-item active"><a href="main.do"
							class="nav-link" style="font-size:x-large">홈</a></li>
						<li class="nav-item"><a href="noticeBoard.do"
							class="nav-link" style="font-size:x-large">공지사항</a></li>
						<li class="nav-item"><a href="freeBoard.do" class="nav-link" style="font-size:x-large">자유게시판</a></li>
						<li class="nav-item dropdown">
							<a href="infoFood.do" class="nav-link dropdown-toggle " id="dropdownMenu" data-toggle="dropdown" aria-expanded="false" style="font-size:x-large">정보</a>
							 <div class="dropdown-menu" aria-labelledby="dropdownMenu">
							     <a class="dropdown-item" href="infoFood.do">맛집 리스트</a>
							     <a class="dropdown-item" href="infoCafe.do">스터디카페 리스트</a>
							 </div>
						</li>
						<li class="nav-item"><a href="projectStudy.do"
							class="nav-link" style="font-size:x-large">프로젝트&스터디</a></li>
						<li class="nav-item"><a href="questionsSelectList.do"
							class="nav-link" style="font-size:x-large">문의사항</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div> --%>
	 <script src="headercss/vendor/jquery/jquery.min.js"></script>
   

    <script src="headercss/js/isotope.min.js"></script>
    <script src="headercss/js/owl-carousel.js"></script>
    <script src="headercss/js/lightbox.js"></script>
    <script src="headercss/js/tabs.js"></script>
    <script src="headercss/js/isotope.js"></script>
    <script src="headercss/js/video.js"></script>
    <script src="headercss/js/slick-slider.js"></script>
    <script src="headercss/js/custom.js"></script>
   	 <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>
</html>
