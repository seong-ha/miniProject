<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/memberJoin.css" rel="stylesheet" type="text/css">
</head>
<body>
<body>
   <div id="con">
    <div id="login">
    <div id="login_form"><!--로그인 폼-->
    <form  id="frm" action="memberJoin.do" method="post">
        <h3 class="login" style="letter-spacing:-1px;">회 원 가 입</h3>

        <!-- <p>
            <input type="submit" value="Sign in with Google" class="btn" style="background-color:#217Af0">
        </p> 구글로 로그인-->

        <hr>

        <!-- <span>ID</span> -->
        <p style="text-align: left; font-size:12px; color: #fff">userid &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" value="중복확인" onclick="idCheck()"></p>
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
            <p style="text-align: left; font-size:12px; color: #fff">
                <input type='radio' name='gender' value='female' />여성
  <input type='radio' name='gender' value='male' />남성</p>
        </label> <!--이메일-->  
		
		
		<label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff">
                생년월일<br> 
      <select name="year">
        <option value="">-- 선택 --</option>
        <option value="1990">1990</option>
        <option value="1991">1991</option>
        <option value="1992">1992</option>
        <option value="1993">1993</option>
        <option value="1994">1994</option>
        <option value="1995">1995</option>
        <option value="1996">1996</option>
        <option value="1997">1997</option>
        <option value="1998">1998</option>
        <option value="1999">1999</option>
        <option value="2000">2000</option>
      </select>
      <select name="month">
        <option value="">-- 선택 --</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
      </select>
      <select name="day">
        <option value="">-- 선택 --</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
      </select></p>
        </label> <!--이메일-->  
        
		
		
		
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
        <span><a href="memberLoginForm.do" >로그인 페이지로 이동</a></span>
        <span><a href="main.do" >홈 페이지로 이동</a></span>
    </p>
    </div>
    <div>
    </div><!--con-->

</body>

</html>