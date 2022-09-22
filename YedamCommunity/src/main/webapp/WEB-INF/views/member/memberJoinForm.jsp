<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../css/memberJoin.css" rel="stylesheet" type="text/css">
</head>
<body>
<body>
    <div id="con">
    <div id="login">
    <div id="login_form"><!--로그인 폼-->
    <form>
        <h3 class="login" style="letter-spacing:-1px;">회 원 가 입</h3>

        <!-- <p>
            <input type="submit" value="Sign in with Google" class="btn" style="background-color:#217Af0">
        </p> 구글로 로그인-->

        <hr>

        <!-- <span>ID</span> -->
        <p style="text-align: left; font-size:12px; color: #fff">userid</p>
        <input type="text" placeholder="아이디" class="size">
        <p></p>
        </label><!--아이디-->
        
        <p style="text-align: left; font-size:12px; color: #fff">username</p>
        <input type="text" placeholder="이름" class="size">
        <p></p>
        </label><!--아이디-->

        <label>
        <!-- <span>PW</span> -->
        <p style="text-align: left; font-size:12px; color: #fff">Password </p>
        <input type="password" placeholder="비밀번호" class="size">
        </label><!--비밀번호-->

        <label>
            <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff"> </p>
            <input type="password" placeholder="비밀번호 확인" class="size">
        </label><!--비밀번호 확인-->

        <label>
            <!-- <span>PW</span> -->
        <p style="text-align: left; font-size:12px; color: #fff">Mobile Phone</p>
            <select class="size num1">
                <option value="1" selected>SKT</option>
                <option value="2" selected>KT</option>
                <option value="3" selected>LG</option>
            </select>
            <input placeholder="-빼고 숫자만 입력"  class="size num2" required>
         </label> <!--전화번호-->

		
         <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff">E-mail</p>
                <input type="text" placeholder="이메일" class="size">
        </label> <!--이메일-->  
        
         <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff">address</p>
                <input type="text" placeholder="주소" class="size">
        </label> <!--이메일-->  


    <br>
        <p>
            <input type="submit" value="Create Acoout" class="btn">
            
        </p>
    </form>

    <hr>
    <p class="find">
        <span><a href="signin.html" >로그인 페이지로 이동</a></span>
    </p>
    </div>
    <div>
    </div><!--con-->

</body>

</html>