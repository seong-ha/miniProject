<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/memberLogin.css" rel="stylesheet" type="text/css">

</head>
<div class="login-box">
  <h2>Login</h2>
  <form>
    <div class="user-box">
      <input type="text" name="memberId" id="memberId" required="required">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="memberPw" id="memberPw" required="required">
      <label>Password</label>
    </div>
    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      로그인
    </a>
    <a href="Join.jsp">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      회원가입
    </a>
  </form>
</div>
</html>