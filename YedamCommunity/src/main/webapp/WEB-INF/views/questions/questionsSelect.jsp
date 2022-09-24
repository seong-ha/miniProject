<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div align="center">
      
      <div>
         <h1>문의 상세보기</h1>
      </div>
      
      <div>
         <table border = "1">
            <tr>
               <th width = "100">작성자</th>
               <td width = "100" align="center">${vo.memberId }</td>
               <th width = "100">작성일자</th>
               <td width = "100" align="center">${vo.questionsDate }</td>
                     
            </tr>
            <tr>
               <th>제목</th>
               <td colspan ="5">${vo.questionsTitle }</td>
            </tr>
            <tr>
               <th>내용</th>
               <td colspan ="5">
               <textarea rows="10" cols="80">${vo.questionsContent }</textarea>
               </td>
            </tr>
                    
         </table>      
      </div><br>
      <div>
         <c:if test="${vo.memberId eq id}">
            <button type ="button" onclick ="subCall('E')">수정</button>&nbsp;&nbsp;
            <button type ="button" onclick ="subCall('D')">삭제</button>&nbsp;&nbsp;            
         </c:if>      
         <button type ="button" onclick = "location.href='questionsSelectList.do'">목록</button>         
      </div>
      <div>
      <form id = "frm" method = "post">
         <input type="hidden" id="id" name="id" value="${vo.questionsId}">
      </form>
      </div>      
   </div>
   <script type="text/javascript">
      function subCall(str) {
         if(str == 'E'){
            frm.action = "questionsEditForm.do"  //수정
         }else{
            frm.action = "questionsDelte.do"  //삭제
         }
         
         frm.submit();
      }
   </script>
</body>
</html>