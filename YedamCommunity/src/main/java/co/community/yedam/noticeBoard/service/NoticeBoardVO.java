package co.community.yedam.noticeBoard.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeBoardVO {
	private int noticeBoardId;
	private String noticeBoardTitle;
	private String noticeBoardSubject;
	private Date noticeBoardDate;
	private String noticeBoardAttech;
	private String noticeBoardAttechDir;
	private int noticeBoardHit;
	private String memberId;
}
