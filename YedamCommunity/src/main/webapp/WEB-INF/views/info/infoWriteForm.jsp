<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>맛집 등록 jsp</title>
<style>
tbody, td, tfoot, th, thead, tr {
	padding:5px;
}


</style>
</head>
<body>
<div align="center">
	<br>
	<br>
	
	<div align="center"><h1>맛집 등록하기</h1></div>
	<br>
	
	<div>
		<form id="frm" action="foodInfoInsert.do" method="post" enctype="multipart/form-data" > <!-- 이진 바이너리도 있다는 걸 알려줌 -->
			<div align="center">
				<table border="1">
					<tr>
					
						<th width="150">NO/권한</th>
						<td >
							<input type="text"  value="관리자" readonly="readonly">
						</td>
					
						<th width="150">가게이름</th>
						<td width="200">
							<input type="text" id="infoName" name="infoName" required="required">
						</td>
						
						<th>영업시간</th>
						<td >
							<input type="text" id="infoTime" name="infoTime" required="required">
						</td>
					
						
					</tr>
					<tr>
						<th width="150">주소</th>
						<td>
							<input type="text" id="infoAddr" name="infoAddr" required="required">
						</td>
						
						<th>가게 번호</th>
						<td >
							<input type="tel" id="infoTel" name="infoTel" required="required">
						</td>
						
						<th width="150">#태그#</th>
						<td>
							<input type="text" id="infoTag" name="infoTag" required="required">
						</td>
						
						
						
					</tr>
						<tr>
						<th>상세내용</th>
						<td colspan="4">
							<textarea rows="10" cols="80" id="infoDetail" name="infoDetail" required="required"></textarea>
						</td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td>
							<input type="file" id="ufile" name="ufile">
						</td>
					</tr>
					
					
		
				</table>
			
			</div><br>
			<br>
			
			<div align="center">
				<input type="submit" value="등록">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소" onclick="location.href='infoFoodSelectList.do'">&nbsp;&nbsp;&nbsp;
				
			</div>
			<br>
			<br>
			<br>
			
		
		</form>
	</div>
	</div>



</body>
</html>