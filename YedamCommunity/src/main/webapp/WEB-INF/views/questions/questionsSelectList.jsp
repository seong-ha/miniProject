
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판 목록</title>
<script src="js/util.js"></script>
</head>
<body>

	<!-- 배너 -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_5.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate mb-0 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="main.do">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>문의사항 <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<br>
					<br>
						<br>
							<br>
								<br>
									<br>
										<br>
											<br>
												<br>
					<h1 class="mb-0 bread">Q&A</h1>
				</div>
			</div>
		</div>
	</section>


	<br>
	<br>
	<br>


	<!-- <div align="center"><h1>Q&A</h1></div> -->
	
		<br> <br>

		<div align="center">
			<table>
				<thead>
					<tr align="center">
						<th width="70">NO</th>
						<th width="250">제목</th>
						<th width="150">작성자</th>
						<th width="150">작성일자</th>

					</tr>
				</thead>


				<tbody>
					<c:if test="${empty list }">
						<tr>
							<td colspan="4">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty list }">
						<c:forEach items="${list }" var="n">
							<tr onMouseover="this.style.backgroundColor='grey', this.style.color='white'"
								onMouseout="this.style.backgroundColor='white',this.style.color='black'"
								onclick="questionsSelect('${n.questionsId}')">
								<td align="center">${n.questionsId }</td>
								<td align="center">${n.questionsTitle }</td>
								<td align="center">${n.memberId }</td>
								<td align="center">${n.questionsDate }</td>
								
								<!-- <td><script>
									document
											.write(timestamp('${n.questionsDate}'));
								</script></td> -->

							</tr>
						</c:forEach>
					</c:if>
				</tbody>

			</table>
		</div>
		
		
		
<br><br><br>
		<div align="center">
			<form id="searchfrm" method="post">
				<select id="key" name="key">
					<option value="0">전체</option>
					<option value="1">제목</option>
					<option value="2">작성자</option>
					<option value="3">내용</option>
				</select> 
				<input type="text" id="val" name="val">&nbsp;&nbsp;
				<input type="button" onclick="searchCall()" value="검색">
			</form>
			
			
			<br>
			<c:if test="${not empty memberId }">
				<!-- 접근제어 -->
				<button type="button"
					onclick="location.href='questionsWriteForm.do'">글쓰기</button>
			</c:if>
		</div>
		
	
		<form id="qsl" name="qsl" method="post" action="questionsSelect.do">
			<input type="hidden" id="questionsId" name="questionsId">
			
		</form>
	
	

	
	<br>
	<br>
	
	<script type="text/javascript">
	
		function questionsSelect(id) {
			document.getElementById("questionsId").value = id;
			qsl.action="questionsSelect.do";
			qsl.submit();
		}
		
		function searchCall(){
			let key = document.getElementById("key").value;
			let val = document.getElementById("val").value;
			let payload = 'key='+key+'&val='+val;
			fetch("AjaxQuestionsSearch.do?"+payload)
				.then(response => response.json())
				.then(json => htmlViews(json)); //화면에 출력
		}
		
		function htmlViews(datas) {  //json을 html로 변환해서 화면에 뿌림
			document.querySelector('tbody').remove();  //<tbody> 삭제
			const container = document.createElement('tbody'); //<tbod>태그 생성
			container.innerHTML = datas.map(data => createHTMLString(data)).join("");  //Html 변환
			document.querySelector('table').appendChild(container);  //화면에 추가
		}
		
		function createHTMLString(data){  //html 변환 코드 css, event Listner를 활용하면 깔끔하게 정리됨
			//if(data.noticeAttech == null) data.noticeAttech = ""; //json 객체에서 null값을 ""로대체
			let str = "<tr onclick=";
				str += "questionsSelect('"+ data.questionsId +"')" +">";
				str += "<td>" + data.questionsId + "</td>";
				str += "<td>" + data.questionsTitle + "</td>";
				str += "<td>" + data.memberId + "</td>";
				str += "<td>" + data.questionsDate + "</td></tr>";
				
			return str;
		}
	</script>

</body>
</html>