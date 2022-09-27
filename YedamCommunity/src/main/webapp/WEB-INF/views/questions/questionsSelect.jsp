<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
         <table border="1">
         
         	<tr>
               <th>제목</th>
               <td colspan ="5" readonly="readonly">${vo.questionsTitle }</td>
            </tr>
            <tr>
               <th width = "100">작성자</th>
               <td width = "100">${vo.memberId }</td>
               <th width = "100">작성일자</th>
               <td width = "100">${vo.questionsDate }</td>
                     
            </tr>
            
            <tr>
               <th>내용</th>
               <td colspan ="5">
               <textarea rows="10" cols="80" readonly="readonly">${vo.questionsContent }</textarea>
               </td>
            </tr>
                    
         </table>      
      </div>
      </div><br>
      
     <!--   <div align="center">
      
      <input type="hidden" id="questionsId" name="questionsId">
      <button type="button" onclick="location.href='questionsSelectList.do'">목록</button>
      
      
      
       <form id="fbf" action="questionsEditForm.do" method="post">
         <button type="submit" id="questionsId" name="questionsId"  value="${vo.questionsId }">수정</button>
   

      </form>

      <form id="fbf" action="questionsDelete.do" method="post">
        <button type="submit" id="questionsId" name="questionsId" value="${vo.questionsId }">삭제</button>


      </form> -->
      
               <div align="center">
          
               <button type="button" onclick="subCall('E')">수정</button>
               &nbsp;&nbsp;
               <button type="button" onclick="subCall('D')">삭제</button>
           
            &nbsp;&nbsp;
            <button type="button" onclick="location.href='questionsSelectList.do'">목록</button>
         </div>
         
         <div>
   <form id="fbs" method="post">
   <input type="hidden" id="id"
      name="id" value="${vo.questionsId}">
</form>
</div>
      
      
       <script type="text/javascript">
      function subCall(str) {
    	  console.log("dks")
         if (str == 'E') {
            fbs.action = "questionsEditForm.do"; // 수정
         } else if (str == 'D') {
            fbs.action = "questionsDelete.do"; // 삭제
         }
         fbs.submit();
      }
      

   
   
   

   //<script type="text/javascript">
     // function questionsUpdate(id) {
       //  document.getElementById("questionsId").value = id;
         //fbf.action="questionsEditForm.do";
         //fbf.submit();
      
   </script>
</body>
</html>