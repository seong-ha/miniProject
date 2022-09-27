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
         <h1>게시글 수정하기</h1>
      </div>
      
      <div>
         <table border = "1">
            <tr>
               <th width = "100">작성자</th>
               <td width = "100">${vo.memberId }</td>
               <th width = "100">작성일자</th>
               <td width ="100">
               		<input type="date" id="questionsDate" name="questionsDate" value="${vo.questionsDate }">
               </td>
                     
            </tr>
            <tr>
               <th>제목</th>
               <td colspan ="5">
               		<input type="text" id="questionsTitle" name="questionsTitle" value="${vo.questionsTitle }"> <!-- 디폴트 값: value -->
               </td>
            </tr>
            <tr>
               <th>내용</th>
               <td colspan ="5">
               <textarea rows="10" cols="80" id="questionsContent" name="questionsContent">
              	${vo.questionsContent }
               </textarea>
               </td>
            </tr>
                    
         </table>      
      </div><br>
      <div>
      		<input type="hidden" id="questionsId" name="questionsId" value="${vo.questionsId }">
      		<input type="submit" value="수정"> &nbsp;&nbsp;&nbsp;
      		<input type="button" onclick="location.href='questionsSelectList.do'" value="목록">
      </div>
      
  </div>
 
</body>
</html>