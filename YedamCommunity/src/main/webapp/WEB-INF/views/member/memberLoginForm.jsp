<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css1/css/memberLogin2.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
<form id="lgm" action="memberLogin.do" method="post">
<div class="page">
  <div class="container">
    <div class="left">
      <div class="login">Login</div>
      <div class="eula">Yedam Community</div>
    </div>
    <div class="right">
     
      
      <div class="form">
        <label for="id" style= "font-size:20px">ID</label>
        <input type="text" id="memberId" name="memberId">
        <label for="password" style= "font-size:20px">Password</label>
        <input type="password" id="memberPw" name="memberPw">
        <br> <br> <br>
        <button type="submit" class="btn-hover color-2" value="Submit" onclick="loginAlter()">로그인</button>
  		<button type="button" class="btn-hover color-2" onclick="location.href='memberJoinForm.do'">회원가입</button>
      	<button type="button" class="btn-hover color-2" onclick="location.href='main.do'">홈</button>
      </div>
    </div>
  </div>
</div>
</form>
<script type="text/javascript">
	function loginAlter() {
		alert('로그인이 완료되었습니다!')
	}
	
	var current = null;
	document.querySelector('#memberId').addEventListener('focus', function(e) {
	  if (current) current.pause();
	  current = anime({
	    targets: 'path',
	    strokeDashoffset: {
	      value: 0,
	      duration: 700,
	      easing: 'easeOutQuart'
	    },
	    strokeDasharray: {
	      value: '240 1386',
	      duration: 700,
	      easing: 'easeOutQuart'
	    }
	  });
	});
	document.querySelector('#memberPw').addEventListener('focus', function(e) {
	  if (current) current.pause();
	  current = anime({
	    targets: 'path',
	    strokeDashoffset: {
	      value: -336,
	      duration: 700,
	      easing: 'easeOutQuart'
	    },
	    strokeDasharray: {
	      value: '240 1386',
	      duration: 700,
	      easing: 'easeOutQuart'
	    }
	  });
	});
	document.querySelector('#submit').addEventListener('focus', function(e) {
	  if (current) current.pause();
	  current = anime({
	    targets: 'path',
	    strokeDashoffset: {
	      value: -730,
	      duration: 700,
	      easing: 'easeOutQuart'
	    },
	    strokeDasharray: {
	      value: '530 1386',
	      duration: 700,
	      easing: 'easeOutQuart'
	    }
	  });
	});
	
</script>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	</script>
</body>
</html>