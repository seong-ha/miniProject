package co.community.yedam.freeBoard.service;

import java.sql.Date;

import lombok.Data;

@Data
public class FreeBoardVO {
   private String freeBoardId;
   private String freeBoardTitle;
   private String freeBoardSubject;
   private Date freeBoardDate;
   private String freeBoardAttech;
   private String freeBoardAttechDir;
   private String freeBoardHit;
   private Date freeBoardLike;
   private int memberId; // 외래키

   ////
   /*
    * ↓ <Date 타입 import 선택 시> 시분초포함 상세한 날짜정보 -> import java.util.Date 대충 날짜정보 ->
    * import java.sql.Date
    */
}