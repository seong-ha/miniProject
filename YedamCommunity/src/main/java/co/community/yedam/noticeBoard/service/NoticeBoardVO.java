package co.community.yedam.noticeBoard.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeBoardVO {
	private int noticeBoardId;
	private String noticeBoardTitle;
	private String noticeBoardSubject;
	private Date noticeBoardDate;
	private int noticeBoardHit;
	private String memberId;
}
