<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th {
		width: 100;
	}
</style>
</head>
<body>
	<div align="center">
		<div>
			<table border="1">
				<tr>
					<th>작성자</th>
					<td>
						${vo.noticeBoardWriter}
					</td>
					<th>작성일자</th>
					<td>
						${vo.noticeBoardDate}
					</td>
					<th>조회수</th>
					<td>
						${vo.noticeBoardHit}
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5">
						${vo.noticeBoardTitle}
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5">
						<textArea rows="10" cols="88" readonly="readonly">${vo.noticeBoardSubject}</textArea>
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td colspan="5"></td>
				</tr>
			</table>
		</div><br>
		<div>
			<c:if test="${vo.noticeBoardWriter eq name}">
				<button type="button" onclick="subCall('E')">수정</button>&nbsp;&nbsp;
				<button type="button" onclick="subCall('D')">삭제</button>&nbsp;&nbsp;
			</c:if>
			<button type="button" onclick="location.href='noticeBoardSelectList.do'">목록</button>
		</div>
		<div>
			<form id="frm" action="" method="post">
				<input type="hidden" id="id" name="id" value="${vo.noticeBoardId}">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function subCall(str) {
			if (str == 'E') {
				frm.action = "noticeBoardEditForm.do";  // 수정
			} else if (str == 'D') {
				frm.action = "noticeBoardDelete.do"; // 삭제
			}
			frm.submit();
		}
	</script>
</body>
</html>