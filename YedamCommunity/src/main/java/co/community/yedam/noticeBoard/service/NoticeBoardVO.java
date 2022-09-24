package co.community.yedam.noticeBoard.service;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeBoardVO {
	private int noticeboardId;
	private String noticeboardTitle;
	private String noticeboardSubject;
	private Date noticeboardDate;
	private String noticeboardAttech;
	private String noticeboardAttechDir;
	private int noticeboardHit;
	private int memberID;
}
