<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div align="center">
	<br><br><br><br><br><br><br><br><br>
	<h1>${message }</h1>
	<c:if test="${message eq '회원탈퇴가 정상적으로 처리 되었습니다.'}">
		<img src="images/sad.png" alt="">
	</c:if>
	<c:if test="${message eq '★ 회원가입이 실패했습니다 ★'}">
		<img src="images/sad.png" alt="">
	</c:if>
	<c:if test="${message eq '★ 회원가입이 완료 되었습니다 로그인 해 주세요!!★'}">
		<img src="images/kiss.png" alt="">
	</c:if>
	
	<br><br><br><br><br><br><br><br><br><br><br>
	</div>
</body>
</html>