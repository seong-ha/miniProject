<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertINto</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
<style>
	.projectStudy_Category {
		opacity: .5;
		padding-left: 15%;
	}

	.projectStudy_Category>div {
		float: left;
		margin-left: 5%;
		margin-top: 5%;
	}

	.projectStudy_Category>div>div {
		float: left;
	}

	.projectStudy_Category>div>h2 {
		float: left;
		padding-left: 40px;
	}

	.projectStudy_Category div span {
		opacity: .5;
	}

	.projectStudy_Category>div:hover span {
		opacity: 1;
	}

	.ftco-section {
		clear: both;
	}

	body {
		/* Created with https://www.css-gradient.com */
		background: #23EC55;
		background: -webkit-radial-gradient(top right, #23EC55, #2D51C1);
		background: -moz-radial-gradient(top right, #23EC55, #2D51C1);
		background: radial-gradient(to bottom left, #23EC55, #2D51C1);
	}

	.wrapper {
		margin: 0;
	}



	body {
		/* Created with https://www.css-gradient.com */
		background: #23EC55;
		background: -webkit-radial-gradient(top right, #23EC55, #2D51C1);
		background: -moz-radial-gradient(top right, #23EC55, #2D51C1);
		background: radial-gradient(to bottom left, #23EC55, #2D51C1);
	}

	.wrapper {
		margin: 5vh;
		clear: both;
	}

	.card {
		border: none;
		transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
		overflow: hidden;
		border-radius: 20px;
		min-height: 450px;
		box-shadow: 0 0 12px 0 rgba(0, 0, 0, 0.2);
	}

	@media (max-width: 768px) {
		.card {
			min-height: 350px;
		}
	}

	@media (max-width: 420px) {
		.card {
			min-height: 300px;
		}
	}

	.card.card-has-bg {
		transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
		background-size: 120%;
		background-repeat: no-repeat;
		background-position: center center;
	}

	.card.card-has-bg:before {
		content: "";
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: inherit;
		-webkit-filter: grayscale(1);
		-moz-filter: grayscale(100%);
		-ms-filter: grayscale(100%);
		-o-filter: grayscale(100%);
		filter: grayscale(100%);
	}

	.card.card-has-bg:hover {
		transform: scale(0.98);
		box-shadow: 0 0 5px -2px rgba(0, 0, 0, 0.3);
		background-size: 130%;
		transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
	}

	.card.card-has-bg:hover .card-img-overlay {
		transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
		background: #234f6d;
		background: linear-gradient(0deg, rgba(4, 69, 114, 0.5) 0%, #044572 100%);
	}

	.card .card-footer {
		background: none;
		border-top: none;
	}

	.card .card-footer .media img {
		border: solid 3px rgba(255, 255, 255, 0.3);
	}

	.card .card-meta {
		color: #26BD75;
	}

	.card .card-body {
		transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
	}

	.card:hover {
		cursor: pointer;
		transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
	}

	.card:hover .card-body {
		margin-top: 30px;
		transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
	}

	.card .card-img-overlay {
		transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
		background: #234f6d;
		background: linear-gradient(0deg, rgba(35, 79, 109, 0.3785889356) 0%, #455f71 100%);
	}
	
	.category{
		margin-left: 20%;
		margin-top: 40px;
	}
	
	.category div {
		display: inline-block;
	} 

</style>
</head>
<body>

	<section class="category">
			<div class="form-check form-switch">
				<h3>
					<input class="form-check-input" type="radio" role="switch" id="flexSwitchCheckDefault1" name="category" value="v1"
					onclick="categorySelect(event)" checked="checked">
					<label class="form-check-label" for="flexSwitchCheckDefault1">전체</label>
				</h3>
			</div>
			<div class="form-check form-switch" style="margin-left:60px;">
			    <h3>
			    	<input class="form-check-input" type="radio" role="switch" id="flexSwitchCheckDefault2" name="category" value="v2"
			    	onclick="categorySelect(event)">
			    	<label class="form-check-label" for="flexSwitchCheckDefault2">프로젝트</label>
			    </h3>
			</div>
			<div class="form-check form-switch" style="margin-left:60px;">
				<h3>
					<input class="form-check-input" type="radio" role="switch" id="flexSwitchCheckDefault3" name="category" value="v3"
					onclick="categorySelect(event)">
					<label class="form-check-label" for="flexSwitchCheckDefault3">스터디</label>
				</h3>
			</div>
	</section>

	<section class="wrapper">
		<div class="container">
			<div id="cardContainer" class="row">

				<div class="col-sm-12 col-md-6 col-lg-4 mb-4">
					<div class="card text-white card-has-bg click-col"
						style="background-image:url('https://source.unsplash.com/600x900/?tech,street');">
						<img class="card-img d-none" src="https://source.unsplash.com/600x900/?tech,street"
							alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
						<div class="card-img-overlay d-flex flex-column">
							<div class="card-body">
								<small class="card-meta mb-2">#프로젝트 #오프라인 #5명</small>
								<h4 class="card-title mt-0 "><a class="text-white" herf="#">Goverment Lorem Ipsum Sit Amet
										Consectetur dipisi?</a></h4>
								<small><i class="far fa-clock"></i> 시작예정일 | 2022.09.05</small>
							</div>
							<div class="card-footer">
								<div class="media">
									<img class="mr-3 rounded-circle"
										src="images/person_1.jpg"
										alt="Generic placeholder image" style="max-width:50px">
									<div class="media-body">
										<h6 class="my-0 text-white d-block"  style="display: inline">ss03050</h6>
										<div>
											<svg style="display: inline-block;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
												<path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
												<path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
											</svg>
											<small>10</small> &nbsp;
											<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
												<path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
											</svg>
											<small>20</small>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-12 col-md-6 col-lg-4 mb-4">
					<div class="card text-white card-has-bg click-col"
						style="background-image:url('https://source.unsplash.com/600x900/?tree,nature');">
						<img class="card-img d-none" src="https://source.unsplash.com/600x900/?tree,nature"
							alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
						<div class="card-img-overlay d-flex flex-column">
							<div class="card-body">
								<small class="card-meta mb-2">Thought Leadership</small>
								<h4 class="card-title mt-0 "><a class="text-white" herf="#">Goverment Lorem Ipsum Sit Amet
										Consectetur dipisi?</a></h4>
								<small><i class="far fa-clock"></i> October 15, 2020</small>
							</div>
							<div class="card-footer">
								<div class="media">
									<img class="mr-3 rounded-circle"
										src="https://assets.codepen.io/460692/internal/avatars/users/default.png"
										alt="Generic placeholder image" style="max-width:50px">
									<div class="media-body">
										<h6 class="my-0 text-white d-block">Oz Coruhlu</h6>
										<small>Director of UI/UX</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4 mb-4">
					<div class="card text-white card-has-bg click-col"
						style="background-image:url('https://source.unsplash.com/600x900/?computer,design');">
						<img class="card-img d-none" src="https://source.unsplash.com/600x900/?computer,design"
							alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
						<div class="card-img-overlay d-flex flex-column">
							<div class="card-body">
								<small class="card-meta mb-2">Thought Leadership</small>
								<h4 class="card-title mt-0 "><a class="text-white" herf="#">Goverment Lorem Ipsum Sit Amet
										Consectetur dipisi?</a></h4>
								<small><i class="far fa-clock"></i> October 15, 2020</small>
							</div>
							<div class="card-footer">
								<div class="media">
									<img class="mr-3 rounded-circle"
										src="https://assets.codepen.io/460692/internal/avatars/users/default.png"
										alt="Generic placeholder image" style="max-width:50px">
									<div class="media-body">
										<h6 class="my-0 text-white d-block">Oz Coruhlu</h6>
										<small>Director of UI/UX</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="col-sm-12 col-md-6 col-lg-4 mb-4">
					<div class="card text-white card-has-bg click-col"
						style="background-image:url('https://source.unsplash.com/600x900/?tech,street');">
						<img class="card-img d-none" src="https://source.unsplash.com/600x900/?tech,street"
							alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
						<div class="card-img-overlay d-flex flex-column">
							<div class="card-body">
								<small class="card-meta mb-2">Thought Leadership</small>
								<h4 class="card-title mt-0 "><a class="text-white" herf="#">Goverment Lorem Ipsum Sit Amet
										Consectetur dipisi?</a></h4>
								<small><i class="far fa-clock"></i> October 15, 2020</small>
							</div>
							<div class="card-footer">
								<div class="media">
									<img class="mr-3 rounded-circle"
										src="https://assets.codepen.io/460692/internal/avatars/users/default.png"
										alt="Generic placeholder image" style="max-width:50px">
									<div class="media-body">
										<h6 class="my-0 text-white d-block">Oz Coruhlu</h6>
										<small>Director of UI/UX</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4 mb-4">
					<div class="card text-white card-has-bg click-col"
						style="background-image:url('https://source.unsplash.com/600x900/?tree,nature');">
						<img class="card-img d-none" src="https://source.unsplash.com/600x900/?tree,nature"
							alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
						<div class="card-img-overlay d-flex flex-column">
							<div class="card-body">
								<small class="card-meta mb-2">Thought Leadership</small>
								<h4 class="card-title mt-0 "><a class="text-white" herf="#">Goverment Lorem Ipsum Sit Amet
										Consectetur dipisi?</a></h4>
								<small><i class="far fa-clock"></i> October 15, 2020</small>
							</div>
							<div class="card-footer">
								<div class="media">
									<img class="mr-3 rounded-circle"
										src="https://assets.codepen.io/460692/internal/avatars/users/default.png"
										alt="Generic placeholder image" style="max-width:50px">
									<div class="media-body">
										<h6 class="my-0 text-white d-block">Oz Coruhlu</h6>
										<small>Director of UI/UX</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4 mb-4">
					<div class="card text-white card-has-bg click-col"
						style="background-image:url('https://source.unsplash.com/600x900/?computer,design');">
						<img class="card-img d-none" src="https://source.unsplash.com/600x900/?computer,design"
							alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
						<div class="card-img-overlay d-flex flex-column">
							<div class="card-body">
								<small class="card-meta mb-2">Thought Leadership</small>
								<h4 class="card-title mt-0 "><a class="text-white" herf="#">Goverment Lorem Ipsum Sit Amet
										Consectetur dipisi?</a></h4>
								<small><i class="far fa-clock"></i> October 15, 2020</small>
							</div>
							<div class="card-footer">
								<div class="media">
									<img class="mr-3 rounded-circle"
										src="https://assets.codepen.io/460692/internal/avatars/users/default.png"
										alt="Generic placeholder image" style="max-width:50px">
									<div class="media-body">
										<h6 class="my-0 text-white d-block">Oz Coruhlu</h6>
										<small>Director of UI/UX</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
	
	fetch('projectStudyCardAll.do')
    .then(response => response.text())
	.then(data => responseResult(data));  // 이 곳에 Call Back함수를 작성하면 됨.
	
		function categorySelect(event) {
			console.log(event.target.checked);
			console.log(event.target);
		}
		
		function makeCard() {

		}
	</script>
</body>
</html>