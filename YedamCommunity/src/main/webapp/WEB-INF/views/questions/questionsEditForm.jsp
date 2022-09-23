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
         <h1>게시글 상세보기</h1>
      </div>
      
      <div>
         <table border = "1">
            <tr>
               <th width = "100">작성자</th>
               <td width = "100" align="center">${vo.memberId }</td>
               <th width = "100">작성일자</th>
               <td width = "100" align="center">
               		<input type="date" id="noticeDate" name="noticeDate" value="${vo.noticeDate }">
               </td>
                     
            </tr>
            <tr>
               <th>제목</th>
               <td colspan ="5">
               		<input type="text" id="noticeTitle" name="noticeTitle" value="${vo.noticeTitle }"> <!-- 디폴트 값: value -->
               </td>
            </tr>
            <tr>
               <th>내용</th>
               <td colspan ="5">
               <textarea rows="10" cols="80" id="noticeSubject" name="noticeSubject">
              		${vo.noticeSubject }
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
      </form>
  </div>
  </div>
</body>
</html>